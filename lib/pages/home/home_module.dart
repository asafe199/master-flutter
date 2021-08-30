import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/pages/home/home.dart';
import 'package:master/pages/home/home_controller.dart';
import 'package:master/pages/home/signup/singup.dart';
import 'package:master/services/impl/auth_repository_impl.dart';
import 'package:master/services/respository/auth_repository.dart';
import 'package:master/store/routes.dart';

class HomeModule extends Module{

  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthRespositoryImpl()),
    Bind.singleton((i) => HomeController(i<AuthRepository>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Home()),
    ChildRoute(Routes.SIGNUP, child: (_, args) => SignUp()),
  ];
}
