import 'package:beamer/beamer.dart';

/// Базовый класс MBeamLocation для поддержки миксинов
abstract class MBaseBeamLocation<T extends BeamState> extends BeamLocation<T> {
  /// Пост-паттерны пути цепляются ко всем основным паттернам, описанным в [pathPatterns]
  /// Например, пост-паттерн "/c" для списка паттернов /a, /a/b1, /a/b2 приведёт
  /// к формированию списка /a, /a/c, /a/b1, /a/b1/c, /a/b2, /a/b2/c
  List<Pattern> get postPathPatterns => [];

  /// Дополнительные страницы, встраиваемые в стек страниц при нахождении их по ключу словаря [additionalPages]
  Map<Pattern, BeamPage> get additionalPages => {};
}
