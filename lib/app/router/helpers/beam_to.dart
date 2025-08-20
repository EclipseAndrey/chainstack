import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/models/insert_page_info.dart';
import 'package:chainstack/app/router/models/m_beam_location.dart';
import 'package:chainstack/app/router/models/m_stored_page.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

extension BeamerBeamTo on BeamerDelegate {
  /// При переходе на другой location можно передать [insertPageInfo],
  /// чтобы вставить в древо страниц другой локации эту страницу перед страницей с указанным ключом.
  /// Это нужно для того, чтобы корректно срабатывала анимация перехода назад (чтобы в новой локации под
  /// экраном с ключом insertPageInfo.pageKeyBeforeWhichInsert была текущая страница)
  void beamToRoute(
    String name, {
    Map<String, String?>? params,
    Object? data,
    bool beamBackOnPop = false,
    InsertPageInfo? insertPageInfo,
  }) {
    final uri = Uri(path: name, queryParameters: params).toString();

    if (insertPageInfo != null) {
      final pageToInsert = currentPages.firstWhereOrNull(
        (page) => (page.key as ValueKey<String>).value == insertPageInfo.pageKeyToInsert,
      );

      if (pageToInsert != null) {
        MBeamLocation.storedPages[uri] = MStoredPage(
          page: pageToInsert,
          pageKeyBeforeWhichInsert: insertPageInfo.pageKeyBeforeWhichInsert,
        );
      }
    }

    return beamToNamed(uri, data: data, beamBackOnPop: beamBackOnPop);
  }
}
