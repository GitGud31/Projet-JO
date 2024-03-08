import "package:flex_color_scheme/flex_color_scheme.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:front/controllers/auth_controller.dart";
import "package:front/routing/app_router.dart";
import "package:google_fonts/google_fonts.dart";

class Root extends ConsumerStatefulWidget {
  const Root({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootState();
}

class _RootState extends ConsumerState<Root> {
  @override
  Widget build(BuildContext context) {
    //final appRouter = ref.watch(appRouterP);

    final appRouter = AppRouter(ref);

    return MaterialApp.router(
      theme: FlexThemeData.dark(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.90,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
          elevatedButtonRadius: 5.0,
          elevatedButtonSchemeColor: SchemeColor.error,
          cardRadius: 12.0,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      routerConfig: appRouter.config(
        reevaluateListenable: ref.watch(authTokenP),
      ),
    );
  }
}
