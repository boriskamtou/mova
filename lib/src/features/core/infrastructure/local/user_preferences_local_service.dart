import 'package:sembast/sembast.dart';

import '../sembast_database.dart';

class UserPreferencesLocalService {
  final SembastDatabase _sembastDatabase;

  UserPreferencesLocalService(this._sembastDatabase);

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _hasFillProfile = 'hasFillProfile';

  final _storeProfile = StoreRef.main();

  Future<void> hasFillProfile(bool status) async {
    await _storeProfile
        .record(_hasFillProfile)
        .put(await _db.then((db) => db!), status);
  }

  Future<bool?> getHasFillProfile() async {
    final hasFillProfile = await _storeProfile
        .record(_hasFillProfile)
        .get(await _db.then((db) => db!));

    return hasFillProfile != null ? hasFillProfile as bool : false;
  }
}
