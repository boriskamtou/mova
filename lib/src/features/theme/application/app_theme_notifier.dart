// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/theme/presentation/app_themes.dart';

class AppThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;
  AppThemeNotifier(this._themeData);

  ThemeData get theme => _themeData;

  ThemeData toggleTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
    return _themeData;
  }
}

final appThemeProvider = ChangeNotifierProvider<AppThemeNotifier>(
  (ref) {
    return AppThemeNotifier(AppTheme.darkTheme());
  },
);
