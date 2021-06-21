import 'package:master/env/config/config_reader.dart';

class Enviroments {
  static String getUrlGit(){
    var variablesEnv = ConfigReader.getVariablesEnv();
    return variablesEnv['github']['user'];
  }
}
