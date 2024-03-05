// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AdminRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminScreen(),
      );
    },
    LandingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LandingScreen(),
      );
    },
    VisiteurRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VisiteurScreen(),
      );
    },
  };
}

/// generated route for
/// [AdminScreen]
class AdminRoute extends PageRouteInfo<void> {
  const AdminRoute({List<PageRouteInfo>? children})
      : super(
          AdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LandingScreen]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VisiteurScreen]
class VisiteurRoute extends PageRouteInfo<void> {
  const VisiteurRoute({List<PageRouteInfo>? children})
      : super(
          VisiteurRoute.name,
          initialChildren: children,
        );

  static const String name = 'VisiteurRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
