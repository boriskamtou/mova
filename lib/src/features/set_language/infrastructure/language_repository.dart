import 'package:mova/src/features/core/infrastructure/sembast_database.dart';
import 'package:sembast/sembast.dart';

class LanguageRepository {
  final SembastDatabase _database;

  LanguageRepository(this._database);

  Future<Database?> get _db async => await _database.database;

  final _storePreferedLanguage = 'storePreferenceLanguage';

  final _storeUserPreferences = StoreRef.main();

  Future<String?> getPreferedLanguage() async {
    return await _storeUserPreferences
        .record(_storePreferedLanguage)
        .get(await _db.then((db) => db!)) as String?;
  }

  Future<void> savePreferedLanguage(String locale) async {
    await _storeUserPreferences
        .record(_storePreferedLanguage)
        .put(await _db.then((db) => db!), locale);
  }
}
