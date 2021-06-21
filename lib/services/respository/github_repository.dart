import 'package:master/models/github/user.dart';

abstract class GitHubRepository{
  Future<User> get(String username);
}
