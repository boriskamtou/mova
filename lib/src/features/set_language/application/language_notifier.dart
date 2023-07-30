import '../../../utils/common_import.dart';
import '../infrastructure/language_repository.dart';

class LanguageNotifier extends StateNotifier<AsyncValue<Locale>> {
  final LanguageRepository _repository;

  LanguageNotifier(this._repository) : super(const AsyncData(Locale('en')));

  Future<String> getPreferedLanguage() async =>
      await _repository.getPreferedLanguage() ?? 'en';

  Future<void> savePreferedLanguage(String locale) async =>
      await _repository.savePreferedLanguage(locale);

  Future<void> toggleLanguage(String locale) async {
    await savePreferedLanguage(locale);
    final currentPreferedLanguage = await getPreferedLanguage();

    if (currentPreferedLanguage == 'en') {
      state = const AsyncData(Locale('en'));
    } else {
      state = const AsyncData(Locale('fr'));
    }
  }
}
