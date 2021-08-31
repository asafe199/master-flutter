import 'package:master/infra/shared_preferences.dart';
import 'package:provider/provider.dart';

class NotifierProvider{
  static providers(){
    return [
      ChangeNotifierProvider(create: (_) => Preferences()),
    ];
  }
}
