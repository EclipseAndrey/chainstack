import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/helpers/beam_to.dart';
import 'package:chainstack/app/router/locations/wallet_location.dart';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_bloc.dart';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_models.dart';
import 'package:chainstack/features/wallet/presentation/state/wallet_bloc/wallet_bloc.dart';
import 'package:chainstack/features/wallet/presentation/state/wallet_bloc/wallet_models.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/extensions/text_style.dart';
import 'package:chainstack/shared/widgets/buttons/base_button.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WalletBloc>(create: (_) => GetIt.I.get()),
        BlocProvider<HistoryBloc>(create: (_) => GetIt.I.get()),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: XAppBar(title: const Text('BTC Testnet Wallet'), allowBackButton: false),
            body: RefreshIndicator.adaptive(
              onRefresh: () async {
                context.read<WalletBloc>().add(const WalletEvent.update());
                context.read<HistoryBloc>().add(const HistoryEvent.refresh());
              },
              child: ListView(
                padding: const EdgeInsets.all(16),
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  // Адрес + кнопки действий
                  BlocBuilder<WalletBloc, WalletState>(
                    builder: (context, state) {
                      final address = switch (state) {
                        WalletLoadedState(:final address) => address,
                        _ => null,
                      };

                      return Card(
                        color: context.colors.backgroundMedium,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Адрес', style: context.text.bodyPrimaryRegular),
                              const SizedBox(height: 8),
                              Text(address ?? '—', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              const SizedBox(height: 12),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: BaseButton(
                                      onPressed: () {
                                        Beamer.of(context).beamToRoute(WalletLocation.deposit);
                                      },
                                      child: const Text('Получить'),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: BaseButton(
                                      onPressed: () {
                                        Beamer.of(context).beamToRoute(WalletLocation.withdrawal);
                                      },
                                      child: const Text('Отправить'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),

                  // Баланс
                  BlocBuilder<WalletBloc, WalletState>(
                    builder: (context, state) {
                      return switch (state) {
                        WalletLoadingState() => const _BalanceCard.loading(),
                        WalletErrorState(:final error) => _BalanceCard.error(error.message ?? 'Ошибка'),
                        WalletLoadedState(:final balanceSats, :final isLoading) => _BalanceCard.loaded(
                          balanceSats ?? 0,
                          isLoading: isLoading,
                        ),
                      };
                    },
                  ),

                  // (опционально можно добавить вывод статуса ноды, если у тебя есть NodeInfoBloc)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BalanceCard extends StatelessWidget {
  final bool isLoading;
  final String? error;
  final int? sats;

  const _BalanceCard._({this.isLoading = false, this.error, this.sats});

  const _BalanceCard.loading() : this._(isLoading: true);
  const _BalanceCard.error(this.error) : isLoading = false, sats = null;
  const _BalanceCard.loaded(int sats, {bool isLoading = false}) : this._(sats: sats, isLoading: isLoading);

  @override
  Widget build(BuildContext context) {
    final textStyleLabel = const TextStyle(fontSize: 14, color: Colors.black54);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Баланс', style: context.text.bodyPrimaryRegular),
            const SizedBox(height: 8),
            if (isLoading)
              const Padding(padding: EdgeInsets.symmetric(vertical: 8.0), child: LinearProgressIndicator(minHeight: 8))
            else if (error != null)
              Text('Ошибка: $error', style: const TextStyle(color: Colors.red))
            else
              Text(_formatBtc(sats ?? 0), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Beamer.of(context).beamToRoute(WalletLocation.historyLocation);
                },
                child: Text('История транзакций', style: context.text.subtitleSecondaryMedium.link(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _formatBtc(int sats) {
  const satsPerBtc = 100000000;
  final btc = (sats / satsPerBtc);
  return '${btc.toStringAsFixed(8)} BTC';
}
