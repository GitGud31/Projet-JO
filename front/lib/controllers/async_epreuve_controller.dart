// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';
import 'package:front/models/epreuve.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncEpreuvesP =
    AsyncNotifierProvider<EpreuveNotifier, List<Epreuve>>(EpreuveNotifier.new);

class EpreuveNotifier extends AsyncNotifier<List<Epreuve>> {
  @override
  FutureOr<List<Epreuve>> build() async => await fetchEpreuves();

  Future<List<Epreuve>> fetchEpreuves() async {
    List<Epreuve> epreuves = [];

    final response =
        await http.get(Uri.parse('http://localhost:3000/api/epreuves'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      return jsonData.map((e) => Epreuve.fromJson(e)).toList();
    } else {
      return epreuves;
    }
  }
}
