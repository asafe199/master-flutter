import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/env/config/config_reader.dart';
import 'package:master/pages/main_module.dart';
import 'package:master/store/routes.dart';
import 'package:master/utils/colors.dart';

Future<void> startProject(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize(env);
  runApp(
    ModularApp(
      module: MainModule(),
      child: MaterialMainApp(),
    ),
  );
}

class MaterialMainApp extends StatelessWidget {
  MaterialMainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Master',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      theme: ThemeData(
        backgroundColor: UIColors.defaultColor,
        brightness: Brightness.dark,
        primaryColor: UIColors.defaultColor,
        accentColor: UIColors.defaultColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 10,
              primary: UIColors.defaultColor,
              textStyle: TextStyle(fontWeight: FontWeight.bold)
          ),
        ),
        fontFamily: 'Poppins',
      ),
    ).modular();
  }
}
