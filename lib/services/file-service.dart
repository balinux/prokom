import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pemrograman_komputer/models/user.dart';

class FileService {
  Future loadExampleJson() async {
    String jsonString = await rootBundle.loadString("assets/example.json");
    final jsonData = json.decode(jsonString);
    User example = User.fromJson(jsonData);
    String _jsonString = example.toString();
    return _jsonString;
  }
}
