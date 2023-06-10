import 'package:sembast/sembast.dart';

import '../sembast_database.dart';

class UserPreferencesRepository {
  final SembastDatabase _sembastDatabase;

  UserPreferencesRepository(this._sembastDatabase);

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _hasFillProfile = 'hasFillProfile';
  final _appTheme = 'appTheme';
  final _hasSeenOnboarding = 'hasSeenOnboarding';

  final _storeUserPreferences = StoreRef.main();

  // ----------------------------- Has Fill Profile Preferences
  Future<void> hasFillProfile(bool status) async {
    await _storeUserPreferences
        .record(_hasFillProfile)
        .put(await _db.then((db) => db!), status);
  }

  Future<bool?> getHasFillProfile() async {
    final hasFillProfile = await _storeUserPreferences
        .record(_hasFillProfile)
        .get(await _db.then((db) => db!));

    return hasFillProfile != null ? hasFillProfile as bool : false;
  }

  // ----------------------------- Dark Mode Preferences

  Future<void> storePrefMode(bool value) async {
    await _storeUserPreferences
        .record(_appTheme)
        .put(await _db.then((db) => db!), value);
  }

  Future<bool?> getUserThemeMode() async {
    final isDarkMode = await _storeUserPreferences
        .record(_appTheme)
        .get(await _db.then((db) => db!));

    return isDarkMode != null ? isDarkMode as bool : false;
  }

// ------------------------------- Has Seen Onboarding preferences
  Future<void> storeHasSeenOnboarding(bool value) async {
    await _storeUserPreferences
        .record(_hasSeenOnboarding)
        .put(await _db.then((db) => db!), value);
  }

  Future<bool?> getHasSeenOnboardung() async {
    final hasSeenOnboarding = await _storeUserPreferences
        .record(_hasSeenOnboarding)
        .get(await _db.then((db) => db!));

    return hasSeenOnboarding != null ? hasSeenOnboarding as bool : false;
  }
}
