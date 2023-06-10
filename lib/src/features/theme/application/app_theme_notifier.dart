// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/infrastructure/local/user_preferences_local_service.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/theme/presentation/app_themes.dart';

class AppThemeNotifier extends StateNotifier<ThemeData> {
  final UserPreferencesRepository _userPreferencesLocalService;

  AppThemeNotifier(this._userPreferencesLocalService)
      : super(AppTheme.darkTheme());

  ThemeData get theme => state;

  Future<void> toggleTheme(bool value) async {
    final userMode =
        await _userPreferencesLocalService.getUserThemeMode() ?? false;
    if (value) {
      state = AppTheme.darkTheme();
    } else {
      state = AppTheme.lightTheme();
    }
  }
}

final appThemeProvider =
    StateNotifierProvider<AppThemeNotifier, ThemeData>((ref) {
  return AppThemeNotifier(ref.watch(userPreferenceLocalServiceProvider));
});
