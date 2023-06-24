import 'package:mova/src/features/core/infrastructure/local/user_preferences_local_service.dart';
import 'package:mova/src/utils/common_import.dart';

class UserPreferenceNotifier extends StateNotifier<AsyncValue<void>> {
  final UserPreferencesRepository _repository;
  UserPreferenceNotifier(this._repository) : super(const AsyncData(null));

  Future<void> saveUserAppVersion(String? installedVersion) async =>
      _repository.saveUserAppVersion(installedVersion);

  Future<String?> getUserAppVersion() async => _repository.getUserAppVersion();
}
