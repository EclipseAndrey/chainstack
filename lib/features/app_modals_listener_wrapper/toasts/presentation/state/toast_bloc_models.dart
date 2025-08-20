import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/models/toast_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toast_bloc_models.freezed.dart';

@freezed
sealed class ToastEvent with _$ToastEvent {
  const factory ToastEvent.toastDataReceived(ToastData? toastData) = ToastDataReceived;
}

@freezed
sealed class ToastState with _$ToastState {
  const factory ToastState({ToastData? toastData}) = _ToastState;
}
