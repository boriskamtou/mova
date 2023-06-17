import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mova/src/features/auth/infrastructure/user_credentials_storage/user_credentials_storage.dart';
import 'package:mova/src/features/core/infrastructure/local/user_preferences_local_service.dart';

import '../domain/fill_profil_failure.dart';

class FillProfileRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;
  final UserPreferencesRepository _userPreferencesLocalService;
  final UserCredentialsStorage _userCredentialsStorage;

  FillProfileRepository(
    this._firebaseFirestore,
    this._firebaseStorage,
    this._firebaseAuth,
    this._userPreferencesLocalService,
    this._userCredentialsStorage,
  );

  Future<Either<FillProfileFailure, QueryDocumentSnapshot>>
      getUserProfile() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      late QueryDocumentSnapshot data;

      await _firebaseFirestore
          .collection('users')
          .get()
          .then((QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          if (doc['email'] == currentUser!.email) {
            data = doc;
          }
        }
      });

      debugPrint(
          '********************** ${data['email']} ********************');
      return right(data);
    } catch (e) {
      return left(FillProfileFailure.failure(e.toString()));
    }
  }

  Future<Either<FillProfileFailure, Unit>> createProfile(
    File imageUrl,
    String fullName,
    String nickName,
    String email,
    String phoneNumber,
    String gender,
  ) async {
    try {
      final ref =
          _firebaseStorage.ref().child('user_images').child('$fullName.jpg');
      await ref.putFile(imageUrl);
      final url = await ref.getDownloadURL();
      await _firebaseFirestore.collection('users').add(
        {
          "email": email,
          "fullName": fullName,
          "gender": gender,
          "imageUrl": url,
          "nickName": nickName,
          "phoneNumber": phoneNumber,
        },
      );
      await _userPreferencesLocalService.hasFillProfile(true);
      _userCredentialsStorage.upsertUserInfo(
        userEmail: email,
        userName: fullName,
        photoUrl: url,
        phoneNumber: phoneNumber,
      );
      return right(unit);
    } on SocketException catch (e) {
      return left(FillProfileFailure.failure(e.message));
    } on PlatformException catch (e) {
      return left(
        FillProfileFailure.failure(e.message),
      );
    } catch (e) {
      return left(FillProfileFailure.failure(e.toString()));
    }
  }

  Future<Either<FillProfileFailure, Unit>> updateProfile(
    File imageUrl,
    String fullName,
    String nickName,
    String email,
    String phoneNumber,
    String gender,
  ) async {
    final currentUser = _firebaseAuth.currentUser;

    try {
      final ref =
          _firebaseStorage.ref().child('user_images').child('$fullName.jpg');
      await ref.putFile(imageUrl);
      final url = await ref.getDownloadURL();
      await _firebaseFirestore.collection('users').doc(currentUser!.uid).set(
        {
          "email": email,
          "fullName": fullName,
          "gender": gender,
          "imageUrl": url,
          "nickName": nickName,
          "phoneNumber": phoneNumber,
        },
      );
      _userCredentialsStorage.upsertUserInfo(
        userEmail: email,
        userName: fullName,
        photoUrl: url,
        phoneNumber: phoneNumber,
      );
      return right(unit);
    } on SocketException catch (e) {
      return left(FillProfileFailure.failure(e.message));
    } on PlatformException catch (e) {
      return left(
        FillProfileFailure.failure(e.message),
      );
    } catch (e) {
      return left(FillProfileFailure.failure(e.toString()));
    }
  }
}
