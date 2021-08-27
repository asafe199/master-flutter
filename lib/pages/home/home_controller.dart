import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/services/respository/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeBaseController with _$HomeController;

abstract class HomeBaseController with Store implements Disposable {

  final UserRepository _userRepository;
  HomeBaseController(this._userRepository);

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
    var userModel = await _userRepository.get(user);
    print(userModel.toString());
  }
}
