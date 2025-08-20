import 'package:chainstack/core/error/x_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_models.freezed.dart';

@freezed
abstract class WithdrawalEvent with _$WithdrawalEvent {
  /// Отправка. refreshAddress — адрес, по которому надо обновить баланс/историю после успеха.
  const factory WithdrawalEvent.send({required String toAddress, required double amountBtc}) = WithdrawalSendEvent;

  /// Сброс ошибки/состояния
  const factory WithdrawalEvent.reset() = WithdrawalResetEvent;
}

@freezed
sealed class WithdrawalState with _$WithdrawalState {
  const factory WithdrawalState.idle() = WithdrawalIdleState;
  const factory WithdrawalState.sending() = WithdrawalSendingState;
  const factory WithdrawalState.success() = WithdrawalSuccessState;
  const factory WithdrawalState.error(XError error) = WithdrawalErrorState;
}
