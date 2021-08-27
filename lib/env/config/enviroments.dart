import 'package:master/env/config/config_reader.dart';

class Enviroments {

  static String USER = 'user';
  static String AUTHENTICATE = 'authenticate';
  static final variablesEnv = ConfigReader.getVariablesEnv();

  static String getUser(id){
    String env = variablesEnv[USER]['get'];
    return env.replaceAll("{id}", id);
  }

  static String getAllUser(){
    return variablesEnv[USER]['getAll'];
  }

  static String deleteUser(id){
    String env = variablesEnv[USER]['getAll'];
    return env.replaceAll("{id}", id);
  }

  static String login(){
    return variablesEnv[AUTHENTICATE]['login'];
  }

  static String refreshToken(){
    return variablesEnv[AUTHENTICATE]['refresh'];
  }
}
