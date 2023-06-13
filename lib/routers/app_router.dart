import 'package:auto_route/auto_route.dart';

import '../pages/documents/document_page.dart';
import '../pages/home/home_page.dart';
import '../pages/main_frame_page.dart';
import '../pages/main_page.dart';
import '../pages/quiz/overview_page.dart';
import '../pages/splash/splash.dart';
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
      // RedirectRoute(path: '', redirectTo: RouteKey.dashboard),
      // AutoRoute(
      //   path: RouteKey.intro,
      //   page: SplashRoute.page,
      // ),
      AutoRoute(path: RouteKey.dashboard, page: MainRoute.page, children: [
        AutoRoute(
          path: RouteKey.home,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: RouteKey.overview,
          page: OverviewRoute.page,
        ),
        AutoRoute(
          path: RouteKey.document,
          page: DocumentsRoute.page,
        ),
      ]),
    ]),
    // AutoRoute(path: RouteKey.root, page: MainRoute.page, children: [
    //   AutoRoute(
    //     path: RouteKey.home,
    //     page: HomeRoute.page,
    //   ),
    //   AutoRoute(
    //     path: RouteKey.overview,
    //     page: OverviewRoute.page,
    //   ),
    // ]),
    RedirectRoute(path: '*', redirectTo: RouteKey.root),
  ];
}
