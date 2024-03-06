import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/conts/styles.dart';
import 'package:front/widgets/groupedview_content_builder.dart';

import '../widgets/listview_content_builder.dart';

@RoutePage()
class VisiteurScreen extends ConsumerStatefulWidget {
  const VisiteurScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VisiteurScreenState();
}

class _VisiteurScreenState extends ConsumerState<VisiteurScreen> {
  final List _elements = [
    {'epreuve': 'Judo 1', 'sport': 'Judo'},
    {'epreuve': 'Judo 2', 'sport': 'Judo'},
    {'epreuve': 'Judo 3', 'sport': 'Judo'},
    {'epreuve': 'Judo 4', 'sport': 'Judo'},
    {'epreuve': 'Judo 5', 'sport': 'Judo'},
    {'epreuve': 'Judo 6', 'sport': 'Judo'},
    {'epreuve': 'Judo 7', 'sport': 'Judo'},
    {'epreuve': 'Judo 8', 'sport': 'Judo'},
    {'epreuve': 'Judo 9', 'sport': 'Judo'},
    {'epreuve': 'Judo 10', 'sport': 'Judo'},
    {'epreuve': 'Judo 11', 'sport': 'Judo'},
    {'epreuve': 'Triathlon 1', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 2', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 3', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 4', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 5', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 6', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 7', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 8', 'sport': 'Triathlon'},
    {'epreuve': 'Triathlon 9', 'sport': 'Triathlon'},
    {'epreuve': 'Tennis 1', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 2', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 3', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 4', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 5', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 6', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 7', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 8', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 9', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 10', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 11', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 12', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 13', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 14', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 15', 'sport': 'Tennis'},
    {'epreuve': 'Tennis 16', 'sport': 'Tennis'},
    {'epreuve': 'Football 1', 'sport': 'Football'},
    {'epreuve': 'Football 2', 'sport': 'Football'},
    {'epreuve': 'Football 3', 'sport': 'Football'},
    {'epreuve': 'Football 4', 'sport': 'Football'},
    {'epreuve': 'Football 5', 'sport': 'Football'},
  ];

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
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  // pays
                  Expanded(
                    flex: 1,
                    child: ListViewContentBuilder(
                      title: "Pays",
                      data: List.generate(100, (i) => "$i"),
                    ),
                  ),

                  // sports
                  Expanded(
                    flex: 1,
                    child: GroupedViewContentBuilder(
                        title: "Sports", data: _elements),
                  ),

                  // athletes
                  Expanded(
                    flex: 1,
                    child: ListViewContentBuilder(
                      title: "Athletes",
                      data: List.generate(5, (i) => "$i"),
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
