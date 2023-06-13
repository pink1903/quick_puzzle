import 'package:auto_route/auto_route.dart';

import '../pages/pages/home.dart';
import '../pages/pages/main_frame_page.dart';
import '../pages/pages/splash/splash.dart';
import 'route_keys.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class WebAppRouter extends _$WebAppRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  late List<AutoRoute> routes = [
    AutoRoute(path: RouteKey.root, page: MainFrameRoute.page, children: [
      RedirectRoute(path: '', redirectTo: RouteKey.home),
      // AutoRoute(
      //   path: RouteKey.intro,
      //   page: SplashRoute.page,
      // ),
      AutoRoute(
        path: RouteKey.home,
        page: HomeRoute.page,
      ),
    ]),
    RedirectRoute(path: '*', redirectTo: RouteKey.root),
  ];
}
