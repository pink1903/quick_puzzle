// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainFrameRoute.name: (routeData) {
      return MaterialPageX<String>(
        routeData: routeData,
        child: const MainFramePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return CustomPage<String>(
        routeData: routeData,
        child: const HomePage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MainFrameRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: MainFrameRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: MainFrameRoute.name,
            ),
          ],
        ),
        RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [MainFramePage]
class MainFrameRoute extends PageRouteInfo<void> {
  const MainFrameRoute({List<PageRouteInfo>? children})
      : super(
          MainFrameRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainFrameRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}
