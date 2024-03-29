import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/controllers/auth_controller.dart';
import 'package:front/conts/colors.dart';
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
            onTap: () => ref.read(authTokenP.notifier).logout(),
            textColor: white,
            bgColor: red!,
            text: "Logout",
          ),
          const Gap(32),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                    child: AdminCountriesListBuilder(),
                  ),

                  // athletes
                  Expanded(
                    flex: 1,
                    child: AdminAthletesListBuilder(),
                  ),
                  // sports
                  Expanded(
                    flex: 1,
                    child: AdminGroupedViewContentBuilder(),
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
