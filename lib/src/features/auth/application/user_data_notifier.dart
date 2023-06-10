import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/user_credentials_storage/user_credentials_storage.dart';

class UserDataNotifier extends StateNotifier<AsyncValue> {
  final UserCredentialsStorage _credentialsStorage;
  UserDataNotifier(this._credentialsStorage) : super(const AsyncLoading()) {
    getUserStorageInfo();
  }

  Future<void> getUserStorageInfo() async {
    Future.wait([
      _credentialsStorage.getUserEmail(),
      _credentialsStorage.getUserName(),
      _credentialsStorage.getUserPhotoUrl(),
    ]);
  }
}
