import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {

  bool isDarkModeOn = false;

  void updateTheme({required bool isDarkModeOn}) {
    this.isDarkModeOn = isDarkModeOn;
    notifyListeners();
  }

    void toggleTheme() {
    // ignore: unnecessary_this
    this.isDarkModeOn = !this.isDarkModeOn;
    notifyListeners();
  }
}