import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/env/enviroment.dart';
import 'package:master/pages/main_module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Future<void> startProject(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize(env);
  runApp(ModularApp(
      module: MainModule(),
      child: MaterialMainApp()));
}

class MaterialMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ).modular();
  }
}
