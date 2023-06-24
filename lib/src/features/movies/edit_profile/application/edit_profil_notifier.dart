import 'dart:io';

import 'package:mova/src/features/movies/edit_profile/infrastructure/edit_profile_repository.dart';
import 'package:mova/src/utils/common_import.dart';

class EditProfileNotifier extends StateNotifier<AsyncValue<void>> {
  final EditProfileRepository _repository;
  EditProfileNotifier(this._repository) : super(const AsyncValue.loading());

  Future<void> editProfile(
    File imageUrl,
    String email,
    String fullName,
    String nickName,
    String phoneNumber,
    String gender,
  ) async {
    state = const AsyncValue.loading();
    final failureOrSuccess = await _repository.editProfile(
      imageUrl,
      fullName,
      nickName,
      email,
      phoneNumber,
      gender,
    );
    state = failureOrSuccess.fold(
      (l) => AsyncError(l.message!, StackTrace.current),
      (r) => const AsyncData(null),
    );
  }
}
