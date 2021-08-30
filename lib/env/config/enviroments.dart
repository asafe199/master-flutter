import 'package:master/env/config/config_reader.dart';

class Enviroments {

  static String _USER = 'user';
  static String _AUTHENTICATE = 'authenticate';
  static final variablesEnv = ConfigReader.getVariablesEnv();

  static String getUser(id){
    String env = variablesEnv[_USER]['get'];
    return env.replaceAll("{id}", id);
  }

  static String getAllUser(){
    return variablesEnv[_USER]['getAll'];
  }

  static String deleteUser(id){
    String env = variablesEnv[_USER]['getAll'];
    return env.replaceAll("{id}", id);
  }

  static String login(){
    return variablesEnv[_AUTHENTICATE]['login'];
  }

  static String refreshToken(){
    return variablesEnv[_AUTHENTICATE]['refresh'];
  }
}
