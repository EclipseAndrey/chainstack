import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/models/guard_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

class MStreamedBeamGuard<T> extends BeamGuard {
  final Stream<T> stream;
  final bool Function(BuildContext? context, BeamLocation location, T? lastStreamValue) isPassed;

  /// Возвращаться ли на предыдущий роут после успешной проверки гарда
  bool returnToPreviousRoute;

  String? passFailRoute;
  T? _lastStreamValue;
  BeamerDelegate? _delegate;
  String? _lastTargetPath;

  MStreamedBeamGuard({
    required this.isPassed,
    required this.stream,
    List<Pattern>? excludedPathPatterns,
    this.returnToPreviousRoute = true,
    String Function(BeamLocation? origin, BeamLocation target)? passFailRouteCallback,
    this.passFailRoute,
  }) : assert(
         passFailRoute != null || passFailRouteCallback != null,
         'Either passFailRoute or passFailRouteCallback must be provided',
       ),
       super(
         check: (context, location) => true,
         pathPatterns: [...excludedPathPatterns ?? [], if (passFailRoute != null) passFailRoute],
         beamToNamed: passFailRouteCallback,
         guardNonMatching: true,
       ) {
    stream.listen((value) {
      if (_lastStreamValue != value) {
        _lastStreamValue = value;
        if (returnToPreviousRoute && _delegate != null && _delegate!.beamingHistory.isNotEmpty) {
          final passFail = passFailRoute ?? beamToNamed!(null, _delegate!.currentBeamLocation);
          if (passFail == (_delegate!.beamingHistory.last.state as BeamState).uri.path) {
            final checkPassed = isPassed(null, _delegate!.currentBeamLocation, _lastStreamValue);
            if (checkPassed) {
              final redirectRoute = _lastTargetPath;
              if (redirectRoute != null) {
                _delegate!.beamToReplacementNamed(redirectRoute);
              } else {
                _delegate!.beamToNamed('/');
              }
            }

            return;
          }
        }

        GetIt.I.get<IGuardNotifier>().notify();
      }
    });
  }

  @override
  bool shouldGuard(BeamLocation<RouteInformationSerializable> location) {
    final failRoute = passFailRoute ?? (beamToNamed != null ? beamToNamed!(location, location) : '');
    final skipGuard = failRoute == (location.state as BeamState).uri.path;
    if (skipGuard) {
      return false;
    } else {
      return super.shouldGuard(location);
    }
  }

  @override
  bool apply(
    BuildContext context,
    BeamerDelegate delegate,
    BeamLocation origin,
    List<BeamPage> currentPages,
    BeamLocation target,
  ) {
    _delegate = delegate;
    _lastTargetPath = target.state.routeInformation.uri.path;

    final checkPassed = isPassed(context, target, _lastStreamValue);
    if (checkPassed) {
      return false;
    }

    onCheckFailed?.call(context, target);

    if (showPage != null) {
      final redirectBeamLocation = GuardShowPage(target.state.routeInformation, showPage!);
      if (replaceCurrentStack) {
        delegate.beamToReplacement(redirectBeamLocation);
      } else {
        delegate.beamTo(redirectBeamLocation);
      }
      return true;
    }

    // just block navigation
    // revert the configuration of delegate
    if (beamTo == null && (passFailRoute ?? beamToNamed) == null) {
      delegate.configuration = origin.state.routeInformation;
      return true;
    }

    if (beamTo != null) {
      final redirectBeamLocation = beamTo!(context, origin, target);
      if (redirectBeamLocation.state.routeInformation.uri == target.state.routeInformation.uri) {
        // just block if this will produce an immediate infinite loop
        return true;
      }
      if (redirectBeamLocation.state.routeInformation.uri == origin.state.routeInformation.uri) {
        // just block if redirect is the current route
        return true;
      }
      if (replaceCurrentStack) {
        delegate.beamToReplacement(redirectBeamLocation);
      } else {
        delegate.beamTo(redirectBeamLocation);
      }
      return true;
    }

    if ((passFailRoute ?? beamToNamed) != null) {
      final redirectNamed = passFailRoute ?? beamToNamed!(origin, target);
      if (redirectNamed == target.state.routeInformation.uri.path) {
        // just block if this will produce an immediate infinite loop
        return true;
      }
      if (redirectNamed == origin.state.routeInformation.uri.path) {
        // just block if redirect is the current route
        return true;
      }
      if (replaceCurrentStack) {
        delegate.beamToReplacementNamed(redirectNamed);
      } else {
        delegate.beamToNamed(redirectNamed);
      }
      return true;
    }

    return false;
  }
}
