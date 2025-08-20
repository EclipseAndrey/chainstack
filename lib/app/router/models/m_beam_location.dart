import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/models/m_base_beam_location.dart';
import 'package:chainstack/app/router/models/m_stored_page.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

abstract class MBeamLocation<T extends BeamState> extends MBaseBeamLocation<T> {
  /// Словарь сохранённых страниц, передаваемых из предыдущего Location в текущий
  /// Ключ - URI пути, по которому будет искаться Location, в который нужно воткнуть созранённую страницу
  static Map<String, MStoredPage> storedPages = {};

  /// Итоговый список паттернов, формируется из [patterns] и [postPathPatterns] в [create] при создании.
  @override
  @nonVirtual
  List<Pattern> pathPatterns = [];

  /// Массив, который необходимо заполнить в дочерних классах вместо [pathPatterns].
  List<Pattern> get patterns;

  @override
  bool get strictPathPatterns => true;

  @override
  @nonVirtual
  List<BeamPage> buildPages(BuildContext context, T state) {
    /// Выполняется проходка по сохранённым страницам из [storedPages] с целью найти
    /// незаассайненные сохранённые страницы, заассайнить их на текущую локацию, и подложить под
    /// нужный экран при совпадении пути URI и ключа экрана
    /// Используется в связки с Beamer.of(beamToRoute).beamToRoute(..., insertCurrentPageBeforeKey: "SomePage")
    final pages = buildTree(context, state);
    final pageEntries = {...storedPages.entries};
    for (final storedPage in pageEntries) {
      if (storedPage.value.assignToBeamLocation == null) {
        storedPages[storedPage.key] = MStoredPage(
          page: storedPage.value.page,
          pageKeyBeforeWhichInsert: storedPage.value.pageKeyBeforeWhichInsert,
          assignToBeamLocation: this,
        );
      } else if (storedPage.value.assignToBeamLocation != this) {
        storedPages.remove(storedPage.key);
        continue;
      }

      if (state.uri.path.contains(storedPage.key)) {
        for (var i = 0; i < pages.length; i++) {
          if ((pages[i].key as ValueKey?)?.value == storedPage.value.pageKeyBeforeWhichInsert) {
            pages.insert(i, storedPage.value.page);
            break;
          }
        }
      }
    }

    return [
      ...pages,
      for (final entry in additionalPages.entries)
        if (state.pathPatternSegments.contains(entry.key) && !pages.any((page) => page.key == entry.value.key))
          entry.value,
    ];
  }

  @override
  void create([RouteInformation? routeInformation, BeamParameters? beamParameters, bool tryPoppingHistory = true]) {
    pathPatterns = [
      ...patterns,
      for (final postPathPattern in postPathPatterns)
        for (final pattern in patterns) '$pattern$postPathPattern'.replaceAll('//', '/'),
    ];
    super.create(routeInformation, beamParameters, tryPoppingHistory);
  }

  /// Ищет в истории переходов роут кошелька и возвращает его state, если он присутствует
  /// Используется для организации корректного обратного транзишена между кошельком и другой,
  /// иерархически не связанной с кошельком веткой роутов
  BeamState? getWalletState(BuildContext context) {
    return context.beamingHistory
            .firstWhereOrNull((e) => (e.state as BeamState).uri.path.contains('/wallet/info'))
            ?.state
        as BeamState?;
  }

  /// Метод, который необходимо реализовывать в дочерних классах вместо [buildPages].
  List<BeamPage> buildTree(BuildContext context, BeamState state);
}
