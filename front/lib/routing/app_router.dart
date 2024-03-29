import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/auth_controller.dart';
import 'package:front/routing/routes.dart';
import 'package:front/screens/admin_dashbord_screen.dart';
import 'package:front/screens/landing_screen.dart';
import 'package:front/screens/login_screen.dart';
import 'package:front/screens/visiteur_screen.dart';

part "app_router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter(this.ref);

  final WidgetRef ref;

  @override
  List<AutoRoute> get routes => [
        //landing
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
          guards: [AuthGuard(ref)],
        ),

        //login
        AutoRoute(
          path: Routes.login,
          page: LoginRoute.page,
        ),
      ];
}

class AuthGuard extends AutoRouteGuard {
  final WidgetRef ref;

  AuthGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authToken = ref.read(authTokenP);

    if (authToken.token != null) {
      return resolver.next(true);
    }

    resolver.redirect(const LoginRoute());
  }
}
