import 'dart:async';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/repositories/toasts_repository.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/presentation/state/toast_bloc_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ToastBloc extends Bloc<ToastEvent, ToastState> {
  final IToastsRepository _notifications;
  late final StreamSubscription _toastDataSubscription;

  ToastBloc(this._notifications) : super(const ToastState()) {
    _toastDataSubscription = _notifications.toastDataStream.listen((toastData) {
      add(ToastDataReceived(toastData));
    });

    on<ToastDataReceived>((event, emit) {
      emit(state.copyWith(toastData: event.toastData));
    });
  }

  @override
  Future<void> close() {
    _toastDataSubscription.cancel();
    return super.close();
  }
}
