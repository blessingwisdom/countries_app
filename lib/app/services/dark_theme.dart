import 'package:countries_app/app/services/theme_prefs.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  ThemeMode _themeMode = ThemeMode.dark;
  bool _isDark = true;
  get themeMode => _themeMode;
  get isDark => _isDark;

  set setDarkTheme(bool value) {
    _isDark = value;
    if (_isDark == true) {
      _themeMode = ThemeMode.dark;
      _isDark = true;
    } else {
      _themeMode = ThemeMode.light;
      _isDark = false;
    }
    darkThemePreference.setTheme(value);
    notifyListeners();
  }
}
