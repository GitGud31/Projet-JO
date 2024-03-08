// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authTokenP =
    ChangeNotifierProvider<LoginController>((_) => LoginController());

class LoginController extends ChangeNotifier {
  String? _token;

  String? get token => _token;

  Future<void> login(String username, String password) async {
    await http
        .post(
      Uri.parse('http://localhost:3000/api/login'),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode({"username": username, "password": password}),
    )
        .then((response) {
      if (response.statusCode == 200) {
        final tokenMap = jsonDecode(response.body) as Map;

        _token = tokenMap["token"];
      } else {
        debugPrint("Error ${response.body}");
      }
    });

    notifyListeners();
  }

  void logout() {
    _token = null;

    notifyListeners();
  }
}
