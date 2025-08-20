import 'package:chainstack/core/error/x_error.dart';
import 'package:chainstack/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:chainstack/features/withdrawal/domain/repositories/withdrawal_repository.dart';
import 'package:chainstack/features/withdrawal/presentation/state/withdrawal_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WithdrawalBloc extends Bloc<WithdrawalEvent, WithdrawalState> {
  final IWithdrawalRepository _withdrawalRepository;
  final IWalletRepository _walletRepository;

  WithdrawalBloc(this._withdrawalRepository, this._walletRepository) : super(const WithdrawalState.idle()) {
    on<WithdrawalSendEvent>(_onSend);
    on<WithdrawalResetEvent>(_onReset);
  }

  Future<void> _onSend(WithdrawalSendEvent event, Emitter<WithdrawalState> emit) async {
    // Базовая валидация
    if (event.toAddress.trim().isEmpty || event.amountBtc <= 0) {
      emit(WithdrawalState.error(XError.internal('Некорректные данные: адрес или сумма')));
      return;
    }

    emit(const WithdrawalState.sending());

    final res = await _withdrawalRepository.send(toAddress: event.toAddress.trim(), amountBtc: event.amountBtc);

    if (res.isLeft) {
      emit(WithdrawalState.error(res.left));
      return;
    }

    emit(const WithdrawalState.success());
  }

  void _onReset(WithdrawalResetEvent event, Emitter<WithdrawalState> emit) {
    emit(const WithdrawalState.idle());
  }
}
