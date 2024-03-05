import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../routing/routes.dart';

@RoutePage()
class LandingScreen extends ConsumerStatefulWidget {
  const LandingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Gap(150),
            const Text("Welcome to JO"),
            const Gap(50),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                child: const Text("Visiteur"),
                onPressed: () => context.navigateNamedTo(Routes.visiteur),
              ),
            ),
            const Gap(10),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                child: const Text("Admin"),
                onPressed: () => context.navigateNamedTo(Routes.login),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
