import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'singup_controller.g.dart';

class SignUpController = SignUpBase with _$SignUpController;

abstract class SignUpBase with Store implements Disposable{

  @observable
  var form = GlobalKey<FormState>();

  @observable
  var name = TextEditingController();
  @observable
  var lastName = TextEditingController();
  @observable
  var email = TextEditingController();
  @observable
  var password = TextEditingController();
  @observable
  var age = TextEditingController();
  @observable
  var phone = TextEditingController();

  @override
  void dispose() {

  }
}
