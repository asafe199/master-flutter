import 'package:flutter_test/flutter_test.dart';

class HttpCustomBindings extends AutomatedTestWidgetsFlutterBinding {
  @override
  bool get overrideHttpClient => false;
}
