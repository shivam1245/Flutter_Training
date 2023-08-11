// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter_chat/pages/drawer/drawer.dart' as _i1;
import 'package:flutter_chat/pages/home_page.dart' as _i2;
import 'package:flutter_chat/pages/logoutPage.dart' as _i3;
import 'package:flutter_chat/pages/orderPage.dart' as _i4;
import 'package:flutter_chat/pages/profile_page.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DrawerViewRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DrawerView(),
      );
    },
    Home_pageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.home_page(),
      );
    },
    LogoutPageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.logoutPage(),
      );
    },
    OrderpageRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.orderpage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Profile(),
      );
    },
  };
}

/// generated route for
/// [_i1.DrawerView]
class DrawerViewRoute extends _i6.PageRouteInfo<void> {
  const DrawerViewRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DrawerViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'DrawerViewRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.home_page]
class Home_pageRoute extends _i6.PageRouteInfo<void> {
  const Home_pageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          Home_pageRoute.name,
          initialChildren: children,
        );

  static const String name = 'Home_pageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.logoutPage]
class LogoutPageRoute extends _i6.PageRouteInfo<void> {
  const LogoutPageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LogoutPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LogoutPageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.orderpage]
class OrderpageRoute extends _i6.PageRouteInfo<void> {
  const OrderpageRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OrderpageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderpageRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Profile]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
