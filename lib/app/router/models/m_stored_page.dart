import 'package:beamer/beamer.dart';

class MStoredPage {
  final BeamPage page;
  final String pageKeyBeforeWhichInsert;
  final BeamLocation? assignToBeamLocation;

  MStoredPage({
    required this.page,
    required this.pageKeyBeforeWhichInsert,
    this.assignToBeamLocation,
  });
}
