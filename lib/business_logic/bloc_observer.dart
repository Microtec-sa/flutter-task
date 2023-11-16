import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/constants/helper.dart';

///Used to register to all events and states for all blocs
///[MovieBloc],
class AppBlocObserver extends BlocObserver {
  ///We can run something, when we create our Bloc
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);

    ///We can check, if the BlocBase is a Bloc or a Cubit
    if (bloc is Cubit) {
      Log.debug('This is a Cubit');
    } else {
      Log.debug('This is a Bloc');
    }
  }

  ///We can react to events
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    Log.debug('an event Happened in $bloc the event is $event');
  }

  ///We can even react to transitions
  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);

    /// With this we can specifically know, when and what changed in our Bloc
    Log.debug(
      // ignore: avoid_dynamic_calls
      'There was a transition from ${transition.currentState.runtimeType} to'
      // ignore: avoid_dynamic_calls
      '${transition.nextState.runtimeType}',
    );
  }

  ///We can react to errors, and we will know the error and the StackTrace
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Log.debug(
      'Error happened in $bloc with error $error '
      'and the stacktrace is $stackTrace',
    );
  }

  ///We can even run something, when we close our Bloc
  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    Log.debug('BLOC is closed');
  }
}
