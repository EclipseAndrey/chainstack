import 'dart:async';
import 'package:chainstack/app/env/environment_model.dart';
import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:chainstack/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:chainstack/features/wallet/presentation/state/wallet_bloc/wallet_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

typedef Sub<T> = StreamSubscription<T>;

@injectable
class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final IWalletRepository _walletRepository;
  final AppEnvironment _appEnvironment;

  late final Sub<Either<XError, int?>>? _subBalance;

  WalletBloc(this._walletRepository, this._appEnvironment) : super(const WalletState.loading()) {
    on<WalletUpdateEvent>(_onUpdate);
    on<WalletUpdatedEvent>(_onUpdated);

    // слушаем поток баланса → обновляем состояние
    _subBalance = _walletRepository.balanceSats$.listen(_onBalanceData);

    // первичная загрузка
    add(const WalletEvent.update());
  }

  @override
  Future<void> close() async {
    await _subBalance?.cancel();
    return super.close();
  }

  void _onBalanceData(Either<XError, int?> data) {
    add(WalletEvent.updated(data));
  }

  Future<void> _onUpdate(WalletUpdateEvent event, Emitter<WalletState> emit) async {
    final address = _appEnvironment.defaultAddress;

    if (address.isEmpty) {
      emit(WalletState.error(XError.internal('Address is empty')));
      return;
    }

    final prevBalance = state is WalletLoadedState ? (state as WalletLoadedState).balanceSats : null;

    emit(WalletState.loaded(address: address, balanceSats: prevBalance, isLoading: true));

    await _walletRepository.update(address: address);

    final current = state;
    if (current is WalletLoadedState && current.isLoading) {
      emit(current.copyWith(isLoading: false));
    }
  }

  void _onUpdated(WalletUpdatedEvent event, Emitter<WalletState> emit) {
    final address = _appEnvironment.defaultAddress;

    if (event.data.isLeft) {
      // не перетираем удачный стейт ошибкой, но можно отдать отдельный экран ошибки:
      emit(WalletState.error(event.data.left));
      return;
    }

    final value = event.data.right; // int? sats
    emit(WalletState.loaded(address: address, balanceSats: value, isLoading: false));
  }
}
