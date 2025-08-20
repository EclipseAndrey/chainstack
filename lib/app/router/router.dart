import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/guards.dart';
import 'package:chainstack/app/router/locations/wallet_location.dart';
import 'package:chainstack/app/router/models/guard_notifier.dart';
import 'package:chainstack/core/x_logger/x_logger.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  late final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(beamLocations: [WalletLocation()]).call,
    guards: getGuards(),
    clearBeamingHistoryOn: {'/'},
    updateListenable: GetIt.I.get<IGuardNotifier>(),
    buildListener: (context, delegate) {
      logD((context.currentBeamLocation.state as BeamState).uri.toString());
    },
  );
}
