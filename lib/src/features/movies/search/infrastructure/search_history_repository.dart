import 'package:sembast/sembast.dart';

import '../../../core/infrastructure/sembast_database.dart';

class SearchHistoryRepository {
  final SembastDatabase _sembastDatabase;

  Future<Database?> get _db async => await _sembastDatabase.database;

  final _store = StoreRef<int, String>('searchHistory');

  SearchHistoryRepository(this._sembastDatabase);

  static const historyLength = 10;

  Future<Stream<List<String>>> watchSearchTerms({String? filter}) async {
    return _store
        .query(
          finder: Finder(
            filter: filter != null && filter.isNotEmpty
                ? Filter.custom(
                    (record) => (record.value as String).startsWith(filter),
                  )
                : null,
          ),
        )
        .onSnapshots(await _db.then((db) => db!))
        .map((records) => records.reversed.map((e) => e.value).toList());
  }

  Future<void> addSearchTerm(String searchedMovie) async =>
      _addSearchTerm(searchedMovie, await _db.then((db) => db!));

  Future<void> deleteSearchTerm(String searchedMovie) async =>
      _deleteSearchTerm(searchedMovie, await _db.then((db) => db!));

  Future<void> putSearchTermFirst(String searchedMovie) async {
    await _db.then((db) => db!.transaction((transaction) async {
          await _deleteSearchTerm(searchedMovie, transaction);
          await _addSearchTerm(searchedMovie, transaction);
        }));
  }

  Future<void> _addSearchTerm(
      String searchedMovie, DatabaseClient dbClient) async {
    final existingKey = await _store.findKey(
      await _db.then((db) => db!),
      finder: Finder(
        filter: Filter.custom((record) => record.value == searchedMovie),
      ),
    );

    if (existingKey != null) {
      putSearchTermFirst(searchedMovie);
      return;
    }

    await _store.add(dbClient, searchedMovie);
    final count = await _store.count(dbClient);

    if (count > historyLength) {
      _store.delete(
        dbClient,
        finder: Finder(
          limit: count - historyLength,
          offset: 0,
        ),
      );
    }
  }

  Future<void> _deleteSearchTerm(
      String searchedMovie, DatabaseClient dbClient) async {
    await _store.delete(
      dbClient,
      finder: Finder(
        filter: Filter.custom(
            (record) => (record.value as String) == searchedMovie),
      ),
    );
  }
}
