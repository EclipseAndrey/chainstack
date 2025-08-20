import 'dart:async';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_bloc.dart';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_models.dart';
import 'package:chainstack/features/wallet/data/models/address_tx_dto.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late final ScrollController _scroll;
  StreamSubscription? _afterBuildSub;

  @override
  void initState() {
    super.initState();
    _scroll = ScrollController();

    // Первичная загрузка — сразу рефреш
    // (Блок сам возьмёт адрес из AppEnvironment)
    _afterBuildSub = Stream<void>.value(null).listen((_) {
      if (!mounted) return;
      context.read<HistoryBloc>().add(const HistoryEvent.refresh());
    });

    _scroll.addListener(_onScroll);
  }

  @override
  void dispose() {
    _afterBuildSub?.cancel();
    _scroll.removeListener(_onScroll);
    _scroll.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bloc = context.read<HistoryBloc>();
    final state = bloc.state;
    if (state is! HistoryLoadedState) return;

    // Если доскролили до последних ~20% — подгружаем
    final pos = _scroll.position;
    if (!pos.hasPixels || !pos.hasContentDimensions) return;

    final threshold = pos.maxScrollExtent * 0.8;
    if (pos.pixels >= threshold && !state.paging && state.canLoadMore) {
      bloc.add(const HistoryEvent.loadMore());
    }
  }

  Future<void> _onRefresh() async {
    context.read<HistoryBloc>().add(const HistoryEvent.refresh());
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: const XAppBar(title: Text('История транзакций')),
          body: BlocBuilder<HistoryBloc, HistoryState>(
            builder: (context, state) {
              // Loading/Empty/Error состояния
              if (state is HistoryLoadingState) {
                return const _CenteredLoader();
              }
              if (state is HistoryErrorState) {
                return _ErrorView(
                  message: state.error.message ?? 'Не удалось загрузить историю',
                  onRetry: () => context.read<HistoryBloc>().add(const HistoryEvent.refresh()),
                );
              }

              // Data
              final s = state as HistoryLoadedState;
              final items = s.items;

              return RefreshIndicator.adaptive(
                onRefresh: _onRefresh,
                child: CustomScrollView(
                  controller: _scroll,
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.all(16),
                      sliver: SliverToBoxAdapter(child: Text('Последние транзакции', style: context.text.headline4)),
                    ),
                    if (items.isEmpty && !s.refreshing)
                      const SliverFillRemaining(hasScrollBody: false, child: _EmptyView())
                    else
                      SliverList.builder(
                        itemBuilder: (context, index) {
                          if (index >= items.length) {
                            // футер с индикатором
                            return const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(strokeWidth: 2),
                                ),
                              ),
                            );
                          }
                          final tx = items[index];
                          return _TxTile(tx: tx);
                        },
                        itemCount: items.length + (s.paging ? 1 : 0),
                      ),
                    // добавим небольшой нижний отступ
                    const SliverToBoxAdapter(child: SizedBox(height: 24)),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

/// Элемент списка транзакций
class _TxTile extends StatelessWidget {
  final AddressTxDto tx;
  const _TxTile({required this.tx});

  @override
  Widget build(BuildContext context) {
    final confirmed = tx.status?.confirmed == true;
    final ts = tx.status?.blockTime;
    String subtitle;
    if (confirmed && ts != null && ts > 0) {
      final dt = DateTime.fromMillisecondsSinceEpoch(ts * 1000, isUtc: true).toLocal();
      final two = (int v) => v < 10 ? '0$v' : '$v';
      subtitle = 'Confirmed • ${two(dt.day)}.${two(dt.month)}.${dt.year} ${two(dt.hour)}:${two(dt.minute)}';
    } else {
      subtitle = confirmed ? 'Confirmed' : 'Unconfirmed';
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: Icon(confirmed ? Icons.check_circle : Icons.schedule, color: confirmed ? Colors.green : Colors.orange),
        title: Text(tx.txid, maxLines: 1, overflow: TextOverflow.ellipsis),
        subtitle: Text(subtitle),
        onTap: () {
          // По желанию: экран деталей транзакции
          // Navigator.of(context).pushNamed('/tx', arguments: tx.txid);
        },
      ),
    );
  }
}

class _CenteredLoader extends StatelessWidget {
  const _CenteredLoader();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Пока нет транзакций', style: context.text.bodySecondaryRegular, textAlign: TextAlign.center),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: context.text.bodySecondaryRegular, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            FilledButton(onPressed: onRetry, child: const Text('Повторить')),
          ],
        ),
      ),
    );
  }
}
