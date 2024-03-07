import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AdminDashbordScreen extends ConsumerStatefulWidget {
  const AdminDashbordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdminDashbordScreenState();
}

class _AdminDashbordScreenState extends ConsumerState<AdminDashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Admin Dashbord screen")),
    );
  }
}
