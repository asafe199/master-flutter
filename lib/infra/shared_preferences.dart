import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static getTheme() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return (_preferences.getBool("isBlack") ?? false) ? Brightness.dark : Brightness.light;
  }

  static setTheme(bool isDark) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    await _preferences.setBool("isBlack", isDark);
  }
}
