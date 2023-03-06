import 'package:get_it/get_it.dart';

import 'main_frame_cubit.dart';

class BlocDependencies {
  static void init(GetIt injector) {
    injector.registerFactory<MainFrameCubit>(() => MainFrameCubit());
  }
}
