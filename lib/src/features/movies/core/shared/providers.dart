import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/core/infrastructure/local/total_results_cache.dart';

import '../../../core/infrastructure/sembast_database.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final sembastProvider = Provider<SembastDatabase>((ref) {
  return SembastDatabase();
});

final localTotalResultsProvider = Provider<TotalResultsCache>((ref) {
  return TotalResultsCache(ref.watch(sembastProvider));
});
