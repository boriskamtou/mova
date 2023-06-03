import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mova/src/features/auth/infrastructure/firebase_authenticator_repository.dart';
import 'package:mova/src/features/auth/infrastructure/user_credentials_storage/user_credentials_storage.dart';

import '../application/auth_notifier.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final userSecureStorageProvider = Provider<UserCredentialsStorage>((ref) {
  return UserCredentialsStorage(
    ref.watch(flutterSecureStorageProvider),
  );
});

final firebaseAuthenticatorProvider =
    Provider<FirebaseAuthenticatorRepository>((ref) {
  return FirebaseAuthenticatorRepository(
    ref.watch(firebaseAuthProvider),
    ref.watch(userSecureStorageProvider),
  );
});

final authNotifier =
    StateNotifierProvider<FirebaseAuthenticatorNotifier, AuthState>((ref) {
  return FirebaseAuthenticatorNotifier(
      ref.watch(firebaseAuthenticatorProvider));
});
