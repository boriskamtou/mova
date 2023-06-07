import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserCredentialsStorage {
  static const _photoUrl = 'photoUrl';
  static const _userEmail = 'userEmail';
  static const _userName = 'userName';
  static const _userPhoneNumber = 'phoneNumber';

  UserCredentialsStorage(this._storage);

  final FlutterSecureStorage _storage;

  Future<void> upsertUserInfo(
          {required String? userName,
          required String? userEmail,
          String? photoUrl,
          String? phoneNumber}) =>
      Future.wait([
        _storage.write(key: _userEmail, value: userEmail),
        _storage.write(key: _userName, value: userName),
        if (photoUrl != null) _storage.write(key: _photoUrl, value: photoUrl),
        if (phoneNumber != null)
          _storage.write(key: _userPhoneNumber, value: phoneNumber)
      ]);

  Future<void> deleteUserInfo() => Future.wait([
        _storage.delete(key: _photoUrl),
        _storage.delete(key: _userEmail),
        _storage.delete(key: _userName)
      ]);

  Future<String?> getUserPhotoUrl() => _storage.read(key: _photoUrl);
  Future<String?> getUserEmail() => _storage.read(key: _userEmail);
  Future<String?> getUserName() => _storage.read(key: _userName);
}
