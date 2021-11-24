import 'dart:convert';

import 'package:http/http.dart';
import 'package:pemrograman_komputer/models/account.dart';

class ApiService {
  final String baseUrl = "reqres.in";
  Client client = Client();

  Future<Account> loginWithApi(String email, String password) async {
    final response = await client.post(Uri.https('$baseUrl', "/api/login"),
        headers: {"content-type": "application/json"},
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}));

    if (response.statusCode == 200) {
      return Account.fromJson(json.decode(response.body));
    } else {
      return null;
    }
  }
}
