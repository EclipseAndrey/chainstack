import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/helpers/sequential_guard_list.dart';

/// Последовательный список гардов в порядке убывания приоритета:
List<BeamGuard> getGuards() {
  return sequentialGuardList([]);
}
