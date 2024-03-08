import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/styles.dart';
import 'package:front/widgets/action_button.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "logo.png",
                fit: BoxFit.contain,
                width: MediaQuery.sizeOf(context).width / 5,
              ),
              const Gap(50),
              const Text("Welcome to JO", style: titleStyle),
              const Gap(50),
              SizedBox(
                width: 200,
                height: 56,
                child: ActionButton(
                  text: "Visiteur",
                  bgColor: gold!,
                  textColor: white,
                  onTap: () => context.navigateNamedTo(Routes.visiteur),
                ),
              ),
              const Gap(10),
              SizedBox(
                width: 200,
                height: 56,
                child: ActionButton(
                  text: "Admin",
                  bgColor: white,
                  textColor: gold!,
                  onTap: () => context.navigateNamedTo(Routes.dashbord),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
