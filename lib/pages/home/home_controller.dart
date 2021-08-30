import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/services/respository/auth_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeBaseController with _$HomeController;

abstract class HomeBaseController with Store implements Disposable {

  HomeBaseController(this._authRepository);
  final AuthRepository _authRepository;

  @observable
  var login = TextEditingController();
  @observable
  var senha = TextEditingController();
  @observable
  var formKey = GlobalKey<FormState>();
  @observable
  var isDark = false;


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
  Future<void> authLogin() async {
    var userModel = await _authRepository.login(login.text.toLowerCase().trim(), senha.text.trim());
    print(userModel.toString());
  }
}
