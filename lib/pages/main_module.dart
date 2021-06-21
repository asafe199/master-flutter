import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/pages/home/home_module.dart';
import 'package:master/store/routes.dart';

class MainModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Routes.HOME, module: HomeModule()),
  ];
}
