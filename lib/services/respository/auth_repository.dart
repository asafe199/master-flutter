import 'package:master/models/auth_user.dart';

abstract class AuthRepository{
  Future<AuthUser> login(String email, String password);

  Future<AuthUser> refreshToken(String token);
}
