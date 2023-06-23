import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/fill_profile/application/fill_profil_notifier.dart';
import 'package:mova/src/features/fill_profile/infrastructure/fill_profile_repository.dart';

import '../../auth/shared/providers.dart';
import '../../core/shared/providers.dart';

final fillProfileProvider = Provider((ref) {
  return FillProfileRepository(
      ref.watch(firestoreProvider),
      ref.watch(firebaseStorageProvider),
      ref.watch(firebaseAuthProvider),
      ref.watch(userPreferenceLocalServiceProvider),
      ref.watch(userSecureStorageProvider));
});

final fillProfileNotifier =
    StateNotifierProvider<FillProfileNotifier, FillProfileState>((ref) {
  return FillProfileNotifier(
    ref.watch(fillProfileProvider),
  );
});
