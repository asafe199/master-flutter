import 'package:master/env/config/enviroments.dart';
import 'package:master/infra/http.dart';
import 'package:master/models/user.dart';
import 'package:master/services/respository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {

  @override
  Future<User> get(String idUser) async {
    var url = Enviroments.getUser(idUser);
    var connect = Connection(HTTP.GET, url);
    var exec = await connect.exec();
    return User.fromJson(exec.data);
  }
}
