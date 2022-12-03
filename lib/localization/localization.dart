import 'dart:convert';

import 'package:flutter/services.dart';

import '../config /assets.dart';

class Localization {
  static late Map<String, Map<String, String>> translationsKeys;

  static Future<void> init() async {
    translationsKeys = {
      "en_US": await _fromFile(LocalizationFiles.enUs),
    };
  }

  static Future<Map<String, String>> _fromFile(String path) async {
    final fileContent = await rootBundle.loadString(path);
    Map<String, String> map = Map.castFrom(jsonDecode(fileContent));
    return map;
  }
}
