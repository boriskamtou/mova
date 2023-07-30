import 'package:flutter/material.dart';
import 'package:mova/src/features/theme/application/theme_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  final SharedPreferences _sharedPreferences;

  ThemeService(this._sharedPreferences);

  static const _isDarkMode = 'isDarkMode';

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  ThemePreferences getThemeMode() {
    final prefsMode = _sharedPreferences.get(_isDarkMode) as bool?;

    if (prefsMode == null) {
      return ThemePreferences.system;
    } else if (prefsMode == true) {
      return ThemePreferences.dark;
    } else {
      return ThemePreferences.light;
    }
  }
}
