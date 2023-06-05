import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

import '../domain/fill_profil_failure.dart';

class FillProfileRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  FillProfileRepository(this._firebaseFirestore, this._firebaseStorage);

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
