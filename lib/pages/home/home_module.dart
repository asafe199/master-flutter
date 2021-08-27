import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/pages/home/home.dart';
import 'package:master/pages/home/home_controller.dart';
import 'package:master/services/impl/user_repository_impl.dart';
import 'package:master/services/respository/user_repository.dart';

class HomeModule extends Module{

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => UserRepositoryImpl()),
    Bind.singleton((i) => HomeController(i<UserRepository>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Home()),
  ];
}
