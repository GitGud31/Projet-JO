import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/colors.dart';
import 'package:front/conts/data.dart';
import 'package:front/routing/routes.dart';
import 'package:front/widgets/action_button.dart';
import 'package:front/widgets/athletes_list_builder.dart';
import 'package:front/widgets/countries_list_builder.dart';
import 'package:front/widgets/groupedview_content_builder.dart';
import 'package:gap/gap.dart';

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
        title: const Padding(
          padding: EdgeInsets.only(left: 32),
          child: Text("Dashboard"),
        ),
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
          const Gap(32),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  // pays
                  Expanded(
                    flex: 1,
                    child: AdminCountriesListBuilder(
                      title: "Pays",
                      data: countries,
                    ),
                  ),

                  // athletes
                  Expanded(
                    flex: 1,
                    child: AdminAthletesListBuilder(
                      title: "Athletes",
                      data: athletes,
                    ),
                  ),
                  // sports
                  Expanded(
                    flex: 1,
                    child: AdminGroupedViewContentBuilder(
                      title: "Sports",
                      data: sports,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
