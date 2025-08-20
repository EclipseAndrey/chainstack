import 'package:beamer/beamer.dart';

class MBeamPage extends BeamPage {
  const MBeamPage({
    required super.child,
    super.fullScreenDialog,
    super.keepQueryOnPop,
    super.key,
    super.name,
    super.onPopPage,
    super.opaque,
    super.popToNamed,
    super.routeBuilder,
    super.title,
    BeamPageType? type,
  }) : super(type: type ?? BeamPageType.cupertino);
}
