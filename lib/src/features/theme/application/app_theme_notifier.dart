import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/theme/infrastructure/theme_service.dart';

import 'theme_preferences.dart';

class ToggleThemeNotifier extends StateNotifier<bool> {
  final ThemeService _themeService;

  ToggleThemeNotifier(this._themeService) : super(false);

  bool get isDarkMode => _themeService.isDarkMode;

  void toggleTheme(bool newValue) {
    state = newValue;
    _themeService.toggleTheme(newValue);
  }
}

class AppThemeNotifiers extends StateNotifier<ThemeMode> {
  final ThemeService _themeService;

  AppThemeNotifiers(
    this._themeService,
  ) : super(ThemeMode.system);

  void themeMode() {
    _themeService.getThemeMode().listen((data) {
      switch (data) {
        case ThemePreferences.dark:
          state = ThemeMode.dark;
        case ThemePreferences.light:
          state = ThemeMode.light;
        default:
          state = ThemeMode.system;
      }
    }, onError: (_) {
      debugPrint('Error');
    });
  }
}
