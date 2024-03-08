import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/styles.dart';
import 'package:front/widgets/athletes_list_builder.dart';
import 'package:front/widgets/groupedview_content_builder.dart';

import '../widgets/countries_list_builder.dart';

@RoutePage()
class VisiteurScreen extends ConsumerStatefulWidget {
  const VisiteurScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VisiteurScreenState();
}

class _VisiteurScreenState extends ConsumerState<VisiteurScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // title
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  const Text("Welcome !", style: titleStyle),
                  const Spacer(),
                  Image.asset("logo_white.png", width: 70),
                ],
              ),
            ),

            // content
            const Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // pays
                        Expanded(
                          flex: 1,
                          child: CountriesListBuilder(),
                        ),

                        // athletes
                        Expanded(
                          flex: 1,
                          child: AthletesListBuilder(),
                        ),
                      ],
                    ),
                  ),

                  // sports
                  Expanded(
                    flex: 1,
                    child: GroupedViewContentBuilder(),
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
