import 'dart:convert';
import 'package:flutter/services.dart';

abstract class Enviroment {
  static const DEV = 'dev';
  static const HOMOL = 'hom';
  static const PROD = 'prod';
}

abstract class ConfigReader {
  static Map<String, dynamic> _env;

  static Future<void> initialize(String enviroment) async {
    var jsonData = await rootBundle.loadString('lib/env/'+enviroment+'.json');
    _env = await json.decode(jsonData);
  }

  static Map<String, dynamic> getVariablesEnv(){
    return _env;
  }
}
