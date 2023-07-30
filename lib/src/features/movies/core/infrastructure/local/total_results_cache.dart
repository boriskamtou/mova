import 'package:sembast/sembast.dart';

import '../../../../core/infrastructure/sembast_database.dart';

class TotalResultsCache {
  final SembastDatabase _database;

  Future<Database?> get _db async => await _database.database;

  TotalResultsCache(this._database);

  final _store = StoreRef<String, int>.main();

  Future<void> saveTotalMoviesResults(
      int totalResults, String storageKey) async {
    await _store
        .record(storageKey)
        .put(await _db.then((db) => db!), totalResults);
  }

  Future<int?> getLocalTotalMoviesResults(String storageKey) async {
    return await _store.record(storageKey).get(await _db.then((db) => db!));
  }

  Future<void> deleteLocalTotalMoviesResults(String storageKey) async {
    await _store.record(storageKey).delete(await _db.then((db) => db!));
  }
}
