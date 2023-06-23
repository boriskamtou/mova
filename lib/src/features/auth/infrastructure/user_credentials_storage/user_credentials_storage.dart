import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserCredentialsStorage {
  static const _photoUrl = 'photoUrl';
  static const _userEmail = 'userEmail';
  static const _userName = 'userName';
  static const _userNickName = 'nickName';
  static const _userPhoneNumber = 'phoneNumber';
  static const _userGender = 'gender';

  UserCredentialsStorage(this._storage);

  final FlutterSecureStorage _storage;

  Future<void> upsertUserInfo({
    required String? userName,
    required String? userEmail,
    String? photoUrl,
    String? nickName,
    String? phoneNumber,
    String? gender,
  }) =>
      Future.wait([
        _storage.write(key: _userEmail, value: userEmail),
        _storage.write(key: _userName, value: userName),
        _storage.write(key: _userGender, value: gender),
        _storage.write(key: _userNickName, value: nickName),
        if (photoUrl != null) _storage.write(key: _photoUrl, value: photoUrl),
        if (phoneNumber != null)
          _storage.write(key: _userPhoneNumber, value: phoneNumber)
      ]);

  Future<void> deleteUserInfo() => Future.wait([
        _storage.delete(key: _photoUrl),
        _storage.delete(key: _userEmail),
        _storage.delete(key: _userNickName),
        _storage.delete(key: _userName),
        _storage.delete(key: _userGender)
      ]);

  Future<String?> getUserPhotoUrl() async =>
      await _storage.read(key: _photoUrl);
  Future<String?> getUserEmail() async => await _storage.read(key: _userEmail);
  Future<String?> getUserName() async => await _storage.read(key: _userName);
  Future<String?> getUserNickName() async =>
      await _storage.read(key: _userNickName);
  Future<String?> getUserGender() async =>
      await _storage.read(key: _userGender);
  Future<String?> getUserPhoneNumber() async =>
      await _storage.read(key: _userPhoneNumber);
}
