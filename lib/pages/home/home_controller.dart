import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeBaseController with _$HomeController;

abstract class HomeBaseController with Store implements Disposable {

  @observable
  int cout = 0;

  @action
  void add(){
    cout++;
  }

  @override
  void dispose() {

  }
}
