import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class VisiteurScreen extends ConsumerStatefulWidget {
  const VisiteurScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VisiteurScreenState();
}

class _VisiteurScreenState extends ConsumerState<VisiteurScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Visiteur screen")),
    );
  }
}
