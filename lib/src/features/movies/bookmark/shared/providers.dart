import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/bookmark/application/bookmark_notifier.dart';
import 'package:mova/src/features/movies/bookmark/infrastructure/bookmark_repository.dart';

final bookMarkRespositoryProvider = Provider<BookmarkRepository>((ref) {
  return BookmarkRepository(ref.watch(sembastProvider));
});

final bookmarkNotifierProvider =
    StateNotifierProvider<BookmarkNotifier, BookmarkState>((ref) {
  return BookmarkNotifier(ref.watch(bookMarkRespositoryProvider));
});
