import 'package:chainstack/core/x_logger/x_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class XLoggerBlocObserver extends BlocObserver {
  final IXLogger logger;

  /// Ignore blocs that refresh every single second
  final List ignoredBlocs = [];

  XLoggerBlocObserver(this.logger);

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('onError $bloc - $error \n $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (ignoredBlocs.contains(bloc.runtimeType)) {
      return;
    }

    super.onEvent(bloc, event);
    logger.d('onEvent $bloc - $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (ignoredBlocs.contains(bloc.runtimeType)) {
      return;
    }

    super.onTransition(bloc, transition);
    logger.d('onTransition to state ${transition.nextState}');
  }
}
