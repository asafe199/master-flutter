import 'package:master/env/enviroment.dart';
import 'pages/main.dart';

Future<void> main() async {
  await startProject(Enviroment.DEV);
}
