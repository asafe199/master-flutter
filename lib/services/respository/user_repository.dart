import 'package:master/models/user.dart';

abstract class UserRepository{
  Future<User> get(String idUser);
}
