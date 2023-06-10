import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/infrastructure/local/user_preferences_local_service.dart';
import 'package:mova/src/features/core/infrastructure/sembast_database.dart';
import 'package:mova/src/features/movies/core/infrastructure/local/total_results_cache.dart';
import 'package:mova/src/features/movies/core/infrastructure/url_builder.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final sembastProvider = Provider<SembastDatabase>((ref) {
  return SembastDatabase.instance;
});

final urlBuilderProvider = Provider<UrlBuilder>((ref) {
  return UrlBuilder();
});

final totalMoviesCacheProvider = Provider<TotalResultsCache>((ref) {
  return TotalResultsCache(ref.watch(sembastProvider));
});

final userPreferenceLocalServiceProvider =
    Provider<UserPreferencesRepository>((ref) {
  return UserPreferencesRepository(ref.watch(sembastProvider));
});
