import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/routing/routes.dart';
import 'package:front/widgets/action_button.dart';
import 'package:gap/gap.dart';

import '../widgets/add_athlete_builder.dart';
import '../widgets/add_country_builder.dart';
import '../widgets/add_epreuve_builder.dart';
import '../widgets/add_sport_builder.dart';

@RoutePage()
class AdminDashbordScreen extends ConsumerStatefulWidget {
  const AdminDashbordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AdminDashbordScreenState();
}

class _AdminDashbordScreenState extends ConsumerState<AdminDashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        title: const Text("Dashboard"),
        actions: [
          ActionButton(
            onTap: () {
              //TODO send logout request

              context.navigateNamedTo(Routes.landing);
            },
            textColor: white,
            bgColor: red!,
            text: "Logout",
          ),
          const Gap(16),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // add Country
                Expanded(
                  flex: 1,
                  child: AddCountryBuilder(),
                ),

                // add Sport
                Expanded(
                  flex: 1,
                  child: AddSportBuilder(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // add Epreuve
                Expanded(
                  flex: 1,
                  child: AddEpreuveBuilder(),
                ),

                // add Athlete
                Expanded(
                  flex: 1,
                  child: AddAthleteBuilder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
