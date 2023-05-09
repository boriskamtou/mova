import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'credentials_storage.dart';

class UserCredentialsStorage implements CredentialsStorage {
  final FlutterSecureStorage _storage;

  UserCredentialsStorage(this._storage);

  @override
  Future<void> clearCredentials() async {
    await _storage.deleteAll();
  }

  @override
  Future<String?> getCredentials(String key) async {
    final credentials = await _storage.read(key: key);
    return credentials;
  }

  @override
  Future<void> saveCredentials(String key, String? value) async {
    await _storage.write(key: key, value: value);
  }
}
