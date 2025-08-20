import 'dart:async';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/models/toast_data.dart';

abstract class IToastsRepository {
  Stream<ToastData?> get toastDataStream;

  void pushToastData(ToastData? toastData);

  void pushErrorMessage(String? errorMessage);

  void dispose();
}
