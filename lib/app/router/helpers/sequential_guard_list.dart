import 'package:beamer/beamer.dart';

/// Добавляет иерархию гардов путём прохода по списку и добавления в лист исключений
/// менее приоритетных гардов более приоритетные
List<BeamGuard> sequentialGuardList(List<BeamGuard> guardList) {
  for (var i = guardList.length - 1; i > 0; i--) {
    for (var j = i - 1; j >= 0; j--) {
      if (guardList[i].guardNonMatching) {
        guardList[i].pathPatterns.addAll(guardList[j].pathPatterns);
      } else {
        guardList[i].pathPatterns.removeWhere((e) => guardList[j].pathPatterns.contains(e));
      }
    }

    final listWithoutDuplicates = guardList[i].pathPatterns.toSet().toList();
    guardList[i].pathPatterns.clear();
    guardList[i].pathPatterns.addAll(listWithoutDuplicates);
  }

  return guardList;
}
