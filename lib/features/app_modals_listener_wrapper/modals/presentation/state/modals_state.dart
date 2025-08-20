import 'package:chainstack/features/app_modals_listener_wrapper/modals/domain/modals_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modals_state.freezed.dart';

@freezed
sealed class ModalEvent with _$ModalEvent {
  const factory ModalEvent.modalReceived(XModalData? modalData) = ModalReceived;
}

@freezed
abstract class ModalState with _$ModalState {
  const factory ModalState({XModalData? modalData}) = _ModalState;
}
