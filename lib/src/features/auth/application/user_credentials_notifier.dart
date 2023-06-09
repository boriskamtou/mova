import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/user_credentials_storage/user_credentials_storage.dart';

class UserDataNotifier extends StateNotifier<AsyncValue<void>> {
  final UserCredentialsStorage _credentialsStorage;
  UserDataNotifier(this._credentialsStorage) : super(const AsyncLoading());

  Future<String?> getUserName() async => _credentialsStorage.getUserName();
  Future<String?> getUserEmail() async => _credentialsStorage.getUserEmail();
  Future<String?> getUserNickName() async =>
      _credentialsStorage.getUserNickName();
  Future<String?> getUserPhoneNumber() async =>
      _credentialsStorage.getUserPhoneNumber();
  Future<String?> getUserPhotoUrl() async =>
      _credentialsStorage.getUserPhotoUrl();

  Future<String?> getUserGender() async => _credentialsStorage.getUserGender();
  Future<void> deleteUserInfos() async => _credentialsStorage.deleteUserInfo();
}
