import 'dart:async';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/models/toast_data.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/repositories/toasts_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: IToastsRepository, dispose: disposeRepository)
class NotificationsRepository implements IToastsRepository {
  final BehaviorSubject<ToastData?> _toastDataStream = BehaviorSubject.seeded(null);

  @override
  Stream<ToastData?> get toastDataStream => _toastDataStream;

  NotificationsRepository();

  @override
  void dispose() {
    _toastDataStream.close();
  }

  @override
  void pushToastData(ToastData? toastData) {
    if (_toastDataStream.value != toastData) {
      _toastDataStream.add(toastData);
    }
  }

  @override
  void pushErrorMessage(String? errorMessage) {
    pushToastData(ToastData(type: ToastType.error, title: errorMessage ?? 'Что-то пошло не так'.tr()));
  }
}

FutureOr disposeRepository(IToastsRepository instance) {
  instance.dispose();
}
