import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/dart/home.dart';
import '../pages/dart/main_frame_page.dart';
import '../pages/dart/splash/splash.dart';
import 'route_keys.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<String>(
      path: RouteKey.root,
      page: MainFramePage,
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: RouteKey.home),
        CustomRoute<String>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          path: RouteKey.home,
          page: HomePage,
        ),
        CustomRoute<String>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
          path: RouteKey.intro,
          page: SplashPage,
        ),
      ],
      // guards: [
      //   AuthGuard
      // ]
    ),
    // AutoRoute<String>(
    //   path: RouteKey.unauthorized,
    //   page: UnAuthenPage,
    // ),
    RedirectRoute(path: '*', redirectTo: RouteKey.root),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter();
}
