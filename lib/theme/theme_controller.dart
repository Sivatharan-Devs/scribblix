import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode _mode = ThemeMode.system;
  bool soundEffects = true;
  bool notifications = true;
  bool reduceMotion = false;

  ThemeMode get mode => _mode;

  void setMode(ThemeMode mode) {
    if (_mode == mode) return;
    _mode = mode;
    notifyListeners();
  }

  void setSoundEffects(bool value) {
    soundEffects = value;
    notifyListeners();
  }

  void setNotifications(bool value) {
    notifications = value;
    notifyListeners();
  }

  void setReduceMotion(bool value) {
    reduceMotion = value;
    notifyListeners();
  }
}
