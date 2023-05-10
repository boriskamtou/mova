import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../domain/failures/auth_failure.dart';
import 'user_credentials_storage/user_credentials_storage.dart';

class FirebaseAuthenticatorRepository {
  final FirebaseAuth _auth;
  final UserCredentialsStorage _credentialsStorage;

  FirebaseAuthenticatorRepository(
    this._auth,
    this._credentialsStorage,
  );

  Future<Either<AuthFailure, UserCredential>> signUpWithEmailAndPassword(
      String email, String password) async {
    UserCredential userCredentials;

    try {
      userCredentials = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredentials.user != null) {
        _credentialsStorage.upsertUserInfo(
          userName: userCredentials.user!.displayName,
          userEmail: userCredentials.user!.email,
          photoUrl: userCredentials.user!.photoURL,
          phoneNumber: userCredentials.user!.phoneNumber,
        );
      }
      return right(userCredentials);
    } on PlatformException catch (e) {
      String message = 'An error occured. Please check your credentials.';

      if (e.message != null) {
        message = e.message!;
      }
      return left(AuthFailure.failure(message));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(
          const AuthFailure.failure('The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        return left(
          const AuthFailure.failure(
              'The account already exists for that email.'),
        );
      } else if (e.code == 'invalid-email') {
        return left(
          const AuthFailure.failure('The email address is not valid.'),
        );
      } else if (e.code == 'network-request-failed') {
        return left(
          const AuthFailure.failure('You do not have internet connexion'),
        );
      } else {
        return left(
          AuthFailure.failure('Failed with error code: ${e.code}'),
        );
      }
    }
  }

  Future<Either<AuthFailure, UserCredential>> signUpWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUserAccount =
          await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUserAccount?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCredentials =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredentials.user != null) {
        _credentialsStorage.upsertUserInfo(
          userName: userCredentials.user!.displayName,
          userEmail: userCredentials.user!.email,
          photoUrl: userCredentials.user!.photoURL,
          phoneNumber: userCredentials.user!.phoneNumber,
        );
      }

      return right(userCredentials);
    } on PlatformException catch (e) {
      return left(
        AuthFailure.failure(e.message!),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return left(
          const AuthFailure.failure('The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        return left(
          const AuthFailure.failure(
              'The account already exists for that email.'),
        );
      } else if (e.code == 'network-request-failed') {
        return left(
          const AuthFailure.failure('You do not have internet connexion'),
        );
      } else {
        return left(
          AuthFailure.failure('Failed with error code: ${e.code}'),
        );
      }
    }
  }

  bool isSigned() {
    if (_auth.currentUser != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _auth.signOut();
      _credentialsStorage.deleteUserInfo();
      return right(unit);
    } on PlatformException catch (e) {
      return left(AuthFailure.failure(e.message!));
    }
  }
}
