import 'dart:io';

import 'package:master/env/config/enviroments.dart';
import 'package:master/infra/http.dart';
import 'package:master/infra/response_service.dart';
import 'package:master/models/auth_user.dart';
import 'package:master/services/respository/auth_repository.dart';

class AuthRespositoryImpl implements AuthRepository {
  Map<String, dynamic> header;

  @override
  Future<AuthUser> login(String email, String password) async {
    try {
      var url = Enviroments.login();
      var data = {"email": email, "password": password};
      Connection connection = Connection(HTTP.POST, url, data: data);
      ResponseService exec = await connection.exec();
      return AuthUser.fromJson(exec.data);
    } catch (e) {
      print(e);
      throw e;
    }
  }

  @override
  Future<AuthUser> refreshToken(String token) async {
    try {
      header = Map();
      header['Authorization'] = token;
      Connection connection = Connection(HTTP.GET, Enviroments.refreshToken(), headers: header);
      ResponseService exec = await connection.exec();
      return AuthUser.fromJson(exec.data);
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
