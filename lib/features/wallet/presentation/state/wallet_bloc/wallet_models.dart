import 'package:chainstack/core/error/either.dart';
import 'package:chainstack/core/error/x_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_models.freezed.dart';

@freezed
abstract class WalletEvent with _$WalletEvent {
  const factory WalletEvent.update({String? address}) = WalletUpdateEvent;
  const factory WalletEvent.updated(Either<XError, int?> data) = WalletUpdatedEvent;
}

@freezed
sealed class WalletState with _$WalletState {
  const factory WalletState.loading() = WalletLoadingState;

  const factory WalletState.loaded({String? address, int? balanceSats, @Default(false) bool isLoading}) =
      WalletLoadedState;

  const factory WalletState.error(XError error) = WalletErrorState;
}
