// ignore_for_file: unnecessary_overrides
import 'package:flutter/cupertino.dart';

@immutable
class ToastData {
  final ToastType type;
  final String title;
  final String? description;

  @override
  int get hashCode => super.hashCode;

  const ToastData({
    required this.type,
    required this.title,
    this.description,
  });

  factory ToastData.error({
    required String title,
    String? description,
  }) =>
      ToastData(
        type: ToastType.error,
        title: title,
        description: description,
      );

  factory ToastData.success({required String title}) => ToastData(
        type: ToastType.success,
        title: title,
      );

  @override
  String toString() => '[${type.name}] $title: $description';

  @override
  bool operator ==(Object other) {
    return toString() == other.toString();
  }
}

enum ToastType { success, info, infoBlue, error }
