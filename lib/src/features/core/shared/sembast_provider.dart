import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/core/infrastructure/sembast_database.dart';

final sembastProvider = Provider<SembastDatabase>((ref) {
  return SembastDatabase();
});
