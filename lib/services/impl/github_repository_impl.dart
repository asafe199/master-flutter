import 'package:master/env/config/enviroments.dart';
import 'package:master/infra/http.dart';
import 'package:master/models/github/user.dart';
import 'package:master/services/respository/github_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {

  @override
  Future<User> get(String username) async {
    var url = Enviroments.getUrlGit();
    url = url.replaceAll("{username}", username);
    var connect = Connection(HTTP.GET, url);
    var exec = await connect.exec();
    return User.fromJson(exec.data);
  }
}
