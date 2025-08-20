import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:chainstack/app/env/environment_model.dart';
import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_models.dart';
import 'package:chainstack/features/wallet/data/models/address_tx_dto.dart';
import 'package:chainstack/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

typedef Sub<T> = StreamSubscription<T>;

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final IWalletRepository _walletRepository;
  final AppEnvironment _appEnvironment;

  late final Sub<Either<XError, List<AddressTxDto>?>>? _subTxs;

  HistoryBloc(this._walletRepository, this._appEnvironment) : super(const HistoryState.loading()) {
    on<HistoryRefreshEvent>(_onRefresh, transformer: restartable());
    on<HistoryLoadMoreEvent>(_onLoadMore, transformer: droppable());
    on<HistoryUpdatedEvent>(_onUpdated);

    _subTxs = _walletRepository.txs$.listen(_onTxsData);
  }

  @override
  Future<void> close() async {
    await _subTxs?.cancel();
    return super.close();
  }

  void _onTxsData(Either<XError, List<AddressTxDto>?> data) {
    add(HistoryEvent.updated(data));
  }

  Future<void> _onRefresh(HistoryRefreshEvent event, Emitter<HistoryState> emit) async {
    final addr = _appEnvironment.defaultAddress;

    final s = state;
    if (s is HistoryLoadedState) {
      emit(s.copyWith(refreshing: true, error: null));
    } else {
      emit(const HistoryState.loading());
    }

    await _walletRepository.getAddressTxs(addr, limit: event.limit);
  }

  Future<void> _onLoadMore(HistoryLoadMoreEvent event, Emitter<HistoryState> emit) async {
    final s = state;
    if (s is! HistoryLoadedState) return;
    if (s.paging || (s.canLoadMore == false)) return;

    final anchor = s.lastSeenTxid;
    if (anchor == null) return;

    emit(s.copyWith(paging: true, error: null));

    final addr = _appEnvironment.defaultAddress;
    final res = await _walletRepository.getAddressTxsNextPage(addr, lastSeenTxid: anchor, pageLimit: event.pageLimit);

    if (res.isLeft) {
      emit(s.copyWith(paging: false, error: res.left));
      return;
    }

    emit(s.copyWith(paging: false));
  }

  void _onUpdated(HistoryUpdatedEvent event, Emitter<HistoryState> emit) {
    if (event.data.isLeft) {
      // Ошибка первичной загрузки
      emit(HistoryState.error(event.data.left));
      return;
    }

    final items = event.data.right ?? const <AddressTxDto>[];
    final last = items.isNotEmpty ? items.last.txid : null;

    final canLoadMore = items.isNotEmpty;

    final prev = state;
    final wasRefreshing = prev is HistoryLoadedState ? prev.refreshing : false;

    emit(
      HistoryState.loaded(items: items, lastSeenTxid: last, paging: false, refreshing: false, canLoadMore: canLoadMore),
    );
  }
}
