import 'package:mova/src/features/theme/application/app_theme_notifier.dart';

import '../../core/shared/providers.dart';
import '../infrastructure/theme_service.dart';
import '../../../utils/common_import.dart';

final themeServiceProvider = Provider<ThemeService>((ref) {
  return ThemeService(ref.watch(sharedPreferencesProvider));
});

final themeProvider =
    StateNotifierProvider<AppThemeNotifiers, ThemeMode>((ref) {
  return AppThemeNotifiers(ref.watch(themeServiceProvider));
});

final toggleThemeProvider =
    StateNotifierProvider<ToggleThemeNotifier, bool>((ref) {
  return ToggleThemeNotifier(ref.watch(themeServiceProvider));
});
