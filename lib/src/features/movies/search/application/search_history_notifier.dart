import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/search_history_repository.dart';

class SearchHistoryNotifier extends StateNotifier<AsyncValue<List<String>>> {
  final SearchHistoryRepository _repository;

  SearchHistoryNotifier(this._repository) : super(const AsyncValue.loading());

  void watchSearchTerms({String? filter}) async {
    await _repository.watchSearchTerms(filter: filter).then(
          (value) => value.listen(
            (data) {
              state = AsyncValue.data(data);
            },
            onError: (_) => state = AsyncValue.error(_, StackTrace.current),
          ),
        );
  }

  Future<void> addSearchTerm(String term) => _repository.addSearchTerm(term);

  Future<void> deleteSearchTerm(String term) =>
      _repository.deleteSearchTerm(term);

  Future<void> putSearchTermFirst(String term) async =>
      _repository.putSearchTermFirst(term);
}
