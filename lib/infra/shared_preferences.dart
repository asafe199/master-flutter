import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences with ChangeNotifier{
  Brightness _brightness;
  get brightness => _brightness;

  getTheme() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _brightness = (_preferences.getBool("isBlack") ?? false) ? Brightness.dark : Brightness.light;
    notifyListeners();
  }

  setTheme(bool isDark) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    await _preferences.setBool("isBlack", isDark);
    _brightness = (isDark ? Brightness.dark : Brightness.light);
    notifyListeners();
  }
}
