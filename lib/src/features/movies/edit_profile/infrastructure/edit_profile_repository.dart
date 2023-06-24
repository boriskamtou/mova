import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../../auth/infrastructure/user_credentials_storage/user_credentials_storage.dart';
import '../../../fill_profile/domain/fill_profil_failure.dart';

class EditProfileRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;
  final UserCredentialsStorage _userCredentialsStorage;

  EditProfileRepository(
    this._firebaseFirestore,
    this._firebaseStorage,
    this._firebaseAuth,
    this._userCredentialsStorage,
  );

  Future<String> getUserDocumentId() async {
    var collection = _firebaseFirestore.collection('users');
    var querySnapshots = await collection.get();
    final usersStream = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots();

    usersStream.listen(
      (event) {
        debugPrint('User Document Id By User ID: ${event.id}');
      },
    );
    debugPrint('User Document Id: ${querySnapshots.docs.first.id}');
    return querySnapshots.docs.first.id;
  }

  Future<Either<FillProfileFailure, Unit>> editProfile(
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

      debugPrint('Print Create File: $imageUrl');

      await ref.putFile(await imageUrl.create());

      final url = await ref.getDownloadURL();

      await _firebaseFirestore
          .collection('users')
          .doc(_firebaseAuth.currentUser!.uid)
          .set(
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
        nickName: nickName,
        phoneNumber: phoneNumber,
        gender: gender,
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
