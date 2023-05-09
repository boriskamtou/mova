import 'package:mova/src/features/core/infrastructure/sembast_database.dart';
import 'package:sembast/sembast.dart';

class TotalResultsCache {
  final SembastDatabase _database;

  TotalResultsCache(this._database);

  final _store = StoreRef<String, int>.main();

  Future<void> saveTotalMoviesResults(
      int totalResults, String storageKey) async {
    await _store.record(storageKey).put(_database.instance, totalResults);
  }

  Future<int?> getLocalTotalMoviesResults(String storageKey) async {
    return await _store.record(storageKey).get(_database.instance);
  }

  Future<void> deleteLocalTotalMoviesResults(String storageKey) async {
    await _store.record(storageKey).delete(_database.instance);
  }
}
