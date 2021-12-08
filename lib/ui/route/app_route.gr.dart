// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:app/ui/counter/counter_page.dart' as _i2;
import 'package:app/ui/home/home_page.dart' as _i1;
import 'package:app/ui/jumper/jumper_page.dart' as _i3;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.HomePage());
    },
    CounterRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.CounterPage());
    },
    JumperRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.JumperPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(CounterRoute.name, path: '/counter-page'),
        _i4.RouteConfig(JumperRoute.name, path: '/jumper-page')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.CounterPage]
class CounterRoute extends _i4.PageRouteInfo<void> {
  const CounterRoute() : super(name, path: '/counter-page');

  static const String name = 'CounterRoute';
}

/// generated route for [_i3.JumperPage]
class JumperRoute extends _i4.PageRouteInfo<void> {
  const JumperRoute() : super(name, path: '/jumper-page');

  static const String name = 'JumperRoute';
}
