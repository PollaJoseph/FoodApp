import 'package:chatbot/themes/Dark_Mode.dart';
import 'package:chatbot/themes/Ligth_Mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;
  ThemeData get themedata => _themeData;
  bool get isdarkmode => _themeData == DarkMode;
  set themedata(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggeltheme() {
    if (_themeData == LightMode) {
      themedata = DarkMode;
    } else {
      themedata = LightMode;
    }
  }
}
