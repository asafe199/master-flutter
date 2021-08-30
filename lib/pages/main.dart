import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master/env/config/config_reader.dart';
import 'package:master/pages/main_module.dart';
import 'package:master/store/routes.dart';

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
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Projeto Master',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.HOME,
        theme: ThemeData(
          backgroundColor: Colors.amber[400],
          brightness: Brightness.light,
          primaryColor: Colors.amber[400],
          accentColor: Colors.amber[400],
          fontFamily: 'Poppins',
        ),
      ).modular(),
    );
  }
}
