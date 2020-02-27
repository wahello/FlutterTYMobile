import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

abstract class ConfigReader {
  static Map<String, dynamic> _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('config/app_config.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String getVersion() {
    return _config['version'] as String;
  }

  static String getSecretKey() {
    return _config['secretKey'] as String;
  }
}
