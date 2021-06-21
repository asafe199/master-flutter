import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:master/env/config/config_reader.dart';
import 'package:master/pages/home/home_controller.dart';
import 'package:master/pages/home/home_module.dart';

import 'config/http_custom_test.dart';

void main() async {
  setUpAll(() async {
    initModule(HomeModule());
    HttpCustomBindings();
    TestWidgetsFlutterBinding.ensureInitialized();
    await ConfigReader.initialize(Enviroment.DEV);
  });

  test("get HomeImpl", () async {
    final controller = Modular.get<HomeController>();
    await controller.print("asafe199");
  });
}
