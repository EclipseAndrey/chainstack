import 'package:easy_localization/easy_localization.dart';

extension ReadableDate on DateTime {
  String toReadableDate({String locale = 'ru'}) {
    final formatter = DateFormat('d MMMM', locale);
    return formatter.format(this);
  }
}
