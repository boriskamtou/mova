import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/edit_profile/infrastructure/edit_profile_repository.dart';

import '../../../auth/shared/providers.dart';
import '../../../core/shared/providers.dart';
import '../application/edit_profil_notifier.dart';

final editProfileRepositoryProvider = Provider<EditProfileRepository>((ref) {
  return EditProfileRepository(
    ref.watch(firestoreProvider),
    ref.watch(firebaseStorageProvider),
    ref.watch(firebaseAuthProvider),
    ref.watch(userSecureStorageProvider),
  );
});

final editProfileNotifierProvider =
    StateNotifierProvider<EditProfileNotifier, AsyncValue<void>>((ref) {
  return EditProfileNotifier(ref.watch(editProfileRepositoryProvider));
});
