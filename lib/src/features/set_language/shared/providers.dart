import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/set_language/application/language_notifier.dart';
import 'package:mova/src/features/set_language/infrastructure/language_repository.dart';
import 'package:mova/src/utils/common_import.dart';

final languageRepositoryProvider = Provider<LanguageRepository>((ref) {
  return LanguageRepository(ref.watch(sembastProvider));
});

final languageNotifierProvider =
    StateNotifierProvider<LanguageNotifier, AsyncValue<Locale>>((ref) {
  return LanguageNotifier(ref.watch(languageRepositoryProvider));
});
