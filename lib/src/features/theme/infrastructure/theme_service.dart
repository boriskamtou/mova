import 'package:flutter/material.dart';
import 'package:mova/src/features/theme/application/theme_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  final SharedPreferences _sharedPreferences;

  ThemeService(this._sharedPreferences);

  static const _isDarkModeKey = 'isDarkMode';

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode =>
      _sharedPreferences.get(_isDarkModeKey) as bool? ?? false;

  void toggleTheme(bool newValue) {
    _sharedPreferences.setBool(_isDarkModeKey, newValue);
  }

  Stream<ThemePreferences> getThemeMode() async* {
    final prefsMode = _sharedPreferences.get(_isDarkModeKey) as bool?;

    if (prefsMode == null) {
      yield ThemePreferences.system;
    } else if (prefsMode == true) {
      yield ThemePreferences.dark;
    } else {
      yield ThemePreferences.light;
    }
  }
}
