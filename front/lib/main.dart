import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/root.dart';

void main() {
  runApp(
    const ProviderScope(child: Root()),
  );
}
