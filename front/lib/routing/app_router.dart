import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/routing/routes.dart';
import 'package:front/screens/admin_screen.dart';
import 'package:front/screens/landing_screen.dart';
import 'package:front/screens/login_screen.dart';
import 'package:front/screens/visiteur_screen.dart';

part "app_router.gr.dart";

final appRouterP = Provider<AppRouter>((_) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        //home
        AutoRoute(
          initial: true,
          path: Routes.landing,
          page: LandingRoute.page,
        ),

        //visiteur
        AutoRoute(
          path: Routes.visiteur,
          page: VisiteurRoute.page,
        ),

        //admin dashbord
        AutoRoute(
          path: Routes.dashbord,
          page: AdminDashbordRoute.page,
        ),

        //login
        AutoRoute(
          path: Routes.login,
          page: LoginRoute.page,
        ),
      ];
}
