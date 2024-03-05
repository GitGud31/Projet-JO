import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:front/routing/app_router.dart";

class Root extends ConsumerStatefulWidget {
  const Root({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootState();
}

class _RootState extends ConsumerState<Root> {
  @override
  Widget build(BuildContext context) {
    final appRouter = ref.watch(appRouterP);

    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
