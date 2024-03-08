// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';
import 'package:front/models/pays.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncPaysP =
    AsyncNotifierProvider<PaysNotifier, List<Pays>>(PaysNotifier.new);

class PaysNotifier extends AsyncNotifier<List<Pays>> {
  @override
  FutureOr<List<Pays>> build() async => await fetchPays();

  Future<List<Pays>> fetchPays() async {
    List<Pays> pays = [];

    final response =
        await http.get(Uri.parse('http://localhost:3000/api/pays'));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      return jsonData.map((e) => Pays.fromJson(e)).toList();
    } else {
      return pays;
    }
  }
}
