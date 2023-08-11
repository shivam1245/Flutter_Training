part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<CustomRoute> get routes => [
        CustomRoute(
            page: Home_pageRoute.page,
            path: '/',
            transitionsBuilder: TransitionsBuilders.zoomIn),
        CustomRoute(
            page: OrderpageRoute.page,
            path: '/order',
            transitionsBuilder: TransitionsBuilders.slideRightWithFade),
        CustomRoute(
            path: '/login',
            page: LogoutPageRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
        CustomRoute(
            page: ProfileRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
        CustomRoute(
          page: DrawerViewRoute.page,
        ),

        /// routes go here
      ];
}
