import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/failures/auth_failure.dart';
import '../infrastructure/firebase_authenticator_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.intiial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure(AuthFailure authFailure) = _Failure;
}

class FirebaseAuthenticatorNotifier extends StateNotifier<AuthState> {
  final FirebaseAuthenticatorRepository _signUpAuthenticator;

  FirebaseAuthenticatorNotifier(this._signUpAuthenticator)
      : super(const AuthState.intiial());

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    state = const AuthState.loading();
    final failureOrSuccess =
        await _signUpAuthenticator.signUpWithEmailAndPassword(email, password);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }

  Future<void> signUpWithGoogle() async {
    state = const AuthState.loading();
    final failureOrSuccess = await _signUpAuthenticator.signUpWithGoogle();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }

  Future<void> signOut() async {
    final failureOrSuccess = await _signUpAuthenticator.signOut();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.unauthenticated(),
    );
  }

  void checkAuthStatus() async {
    state = await (_signUpAuthenticator.isSigned())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  Future<String?> getUserEmail() async {
    return await _signUpAuthenticator.userEmail();
  }

  // bool get getIsRememberMe => _signUpAuthenticator.getIsRememberMe;
  // bool get hasSeenOnboarding => _signUpAuthenticator.getHasSeenOnboarding;

  // void toggleRemeberMe(bool value) {
  //   _signUpAuthenticator.toggleRememberMe(value);
  // }

  // void toggleHasSeenOnboarding() {
  //   _signUpAuthenticator.toggleHasSeenOnboarding();
  // }
}
