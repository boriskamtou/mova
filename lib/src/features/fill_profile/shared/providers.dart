import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/fill_profile/application/fill_profil_notifier.dart';
import 'package:mova/src/features/fill_profile/infrastructure/fill_profile_repository.dart';

import '../../auth/shared/providers.dart';
import '../../core/shared/providers.dart';

final firebaseStorageProvider = Provider((ref) {
  return FirebaseStorage.instance;
});

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

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
