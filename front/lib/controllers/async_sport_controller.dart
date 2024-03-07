// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';
import 'package:front/models/sport.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncSportsP =
    AsyncNotifierProvider<SportsNotifier, List<Sport>>(SportsNotifier.new);

class SportsNotifier extends AsyncNotifier<List<Sport>> {
  @override
  FutureOr<List<Sport>> build() async => await fetchSports();

  Future<List<Sport>> fetchSports() async {
    List<Sport> sports = [];

    final response =
        await http.get(Uri.parse('http://localhost:3000/api/sports'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      return jsonData.map((e) => Sport.fromJson(e)).toList();
    } else {
      return sports;
    }
  }
}
