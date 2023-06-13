import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logger.dart';

class MainBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (!kReleaseMode) {
      LoggerUtils.v('${bloc.runtimeType.toString()} ${change.toString()}');
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (!kReleaseMode) {
      LoggerUtils.v('${bloc.runtimeType.toString()} ${stackTrace.toString()}');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (!kReleaseMode) {
      LoggerUtils.v('${bloc.runtimeType.toString()} ${event.toString()}');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (!kReleaseMode) {
      LoggerUtils.v('${bloc.runtimeType.toString()} ${transition.toString()}');
    }
  }
}
