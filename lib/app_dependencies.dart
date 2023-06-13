import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:quick_puzzle/utilities/network/network_uti/rest_utility.dart';

import 'blocs/bloc_dependencies.dart';
import 'businesses/business_dependencies.dart';
// import 'models/model_dependencies.dart.dart';
import 'models/model_dependencies.dart';
import 'routers/app_router.dart';
import 'services/service_dependencies.dart';
import 'utilities/app_configuration.dart';

class AppDependencies {
  static GetIt get injector => GetIt.I;

  static Future<bool> initialize() async {
    injector.registerLazySingleton<Connectivity>(() => Connectivity());
    injector.registerLazySingleton<AppConfiguration>(() => AppConfiguration());
    final AppConfiguration config =
        AppDependencies.injector.get<AppConfiguration>();
    await config.loadConfig();
    injector
        .registerLazySingleton<RestUtils>(() => RestUtils(config.authBaseUrl));
    injector.registerLazySingleton<RestUtils>(
        () => RestUtils(config.baseUrl, interceptors: [
              // LoggingInterceptor(),
              // AuthInterceptor(),
              // TokenInterceptor('AMS'),
              // AMSDefaultHeaderInterceptor()
            ]),
        instanceName: 'AMS');

    injector.registerLazySingleton<RestUtils>(
        () => RestUtils(config.mDMBaseUrl, interceptors: [
              // LoggingInterceptor(),
              // AuthInterceptor(),
              // TokenInterceptor('MDM'),
              // AMSDefaultHeaderInterceptor()
            ]),
        instanceName: 'MDM');
    injector.registerLazySingleton<RestUtils>(
        () => RestUtils(config.ssoBaseUrl, interceptors: [
              // LoggingInterceptor(),
              // AuthInterceptor(),
              // TokenInterceptor('SSO'),
              // AMSDefaultHeaderInterceptor()
            ]),
        instanceName: 'SSO');

    // injector.registerLazySingleton<AuthGuard>(() => AuthGuard());

    injector.registerLazySingleton<WebAppRouter>(() => WebAppRouter());
    BlocDependencies.init(injector);
    BusinessDependencies.init(injector);
    ServiceDependencies.init(injector);
    ModelDependencies.init(injector);

    return true;
  }
}
