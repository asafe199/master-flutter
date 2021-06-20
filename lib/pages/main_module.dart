import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/pages/home/home.dart';
import 'package:master/pages/home/home_controller.dart';

class MainModule extends Module{
  @override
  final List<Bind> binds = [
    Bind((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Home()),
  ];
}
