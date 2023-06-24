import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/infrastructure/local/user_preferences_local_service.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/theme/presentation/app_themes.dart';

class AppThemeNotifier extends StateNotifier<ThemeData> {
  final UserPreferencesRepository _userPreferenceRepository;

  AppThemeNotifier(this._userPreferenceRepository)
      : super(AppTheme.darkTheme());

  Future<bool?> getPreferedThemeMode() async =>
      await _userPreferenceRepository.getUserThemeMode();

  Future<void> storeUserPreferedThemeMode(bool value) async =>
      await _userPreferenceRepository.storeUserPreferedThemeMode(value);

  Future<void> toggleTheme() async {
    final userMode = await getPreferedThemeMode() ?? true;
    if (userMode) {
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
