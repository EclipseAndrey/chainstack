import 'dart:async';

import 'package:chainstack/features/app_modals_listener_wrapper/modals/domain/modals_repository.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/modals/presentation/state/modals_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ModalBloc extends Bloc<ModalEvent, ModalState> {
  final IModalsRepository _notifications;
  late final StreamSubscription _modalsSubscription;

  ModalBloc(this._notifications) : super(const ModalState()) {
    _modalsSubscription = _notifications.modalsStream.listen((modalData) {
      add(ModalReceived(modalData));
    });

    on<ModalReceived>((event, emit) {
      emit(state.copyWith(modalData: event.modalData));
    });
  }

  @override
  Future<void> close() {
    _modalsSubscription.cancel();
    return super.close();
  }
}
