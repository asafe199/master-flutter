import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/services/respository/github_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeBaseController with _$HomeController;

abstract class HomeBaseController with Store implements Disposable {

  final GitHubRepository _gitHubRepository;
  HomeBaseController(this._gitHubRepository);

  @observable
  int cout = 0;

  @action
  void add(){
    cout++;
  }

  @override
  void dispose() {

  }

  @action
  Future<void> print(String user) async {
    var userModel = await _gitHubRepository.get(user);
    print(userModel.toString());
  }
}
