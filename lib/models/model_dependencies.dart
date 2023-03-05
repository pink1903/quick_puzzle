import 'package:get_it/get_it.dart';

import 'services/profile/get_agent_profile_response.dart';


class ModelDependencies {
  static void init(GetIt injector) {
    injector.registerFactory(() => FullProfileResponse());
  }
}
