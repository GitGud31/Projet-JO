// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/models/athlete.dart';

final asyncAthletesP = AsyncNotifierProvider<AthletesNotifier, List<Athlete>>(
    AthletesNotifier.new);

class AthletesNotifier extends AsyncNotifier<List<Athlete>> {
  @override
  FutureOr<List<Athlete>> build() async => await fetchAthletes();

  Future<List<Athlete>> fetchAthletes() async {
    List<Athlete> athletes = [];

    final response =
        await http.get(Uri.parse('http://localhost:3000/api/athletes'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      return jsonData.map((e) => Athlete.fromJson(e)).toList();
    } else {
      return athletes;
    }
  }
}
