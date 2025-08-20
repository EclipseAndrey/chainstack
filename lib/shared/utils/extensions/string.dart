import 'dart:math';

extension StringEx on String {
  String get camelToSnake {
    final exp = RegExp('(?<=[a-z])[A-Z]');
    return replaceAllMapped(exp, (m) => '_${m.group(0) ?? ''}').toLowerCase();
  }

  String capitalize() {
    if (length < 2) {
      return '';
    }
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String get minusRemoved {
    if (contains('-')) {
      return replaceFirst('-', '');
    }
    return this;
  }

  /// Метод для замены параметров :var в строке.
  ///
  /// Например:
  /// var location = '/spot/:from/:to';
  /// location.withParams({'from': 'BTC', 'to': 'USDT'});
  String withParams(Map<String, String> params) {
    var endString = this;
    for (final param in params.entries) {
      endString = endString.replaceAll(':${param.key}', param.value);
    }

    return endString;
  }

  Uri toUri() {
    return Uri.parse(this);
  }

  String substringSafe(int start, int end) {
    if (start >= length || start < 0) {
      return '';
    }
    return substring(start, min(end, length));
  }
}
