import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'singup_controller.g.dart';

class SignUpController = SignUpBase with _$SignUpController;

abstract class SignUpBase with Store implements Disposable{


  @override
  void dispose() {

  }
}
