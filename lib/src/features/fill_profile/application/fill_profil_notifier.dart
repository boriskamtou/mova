import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/fill_profile/infrastructure/fill_profile_repository.dart';

part 'fill_profil_notifier.freezed.dart';

@freezed
class FillProfileState<T> with _$FillProfileState<T> {
  const FillProfileState._();
  const factory FillProfileState.intial() = _Initial;
  const factory FillProfileState.loading() = _Loading;
  const factory FillProfileState.failure([String? message]) = _Failure;
  const factory FillProfileState.success([T? data]) = _Success;
}

class FillProfileNotifier extends StateNotifier<FillProfileState> {
  final FillProfileRepository _fillProfileRepository;
  FillProfileNotifier(this._fillProfileRepository)
      : super(const FillProfileState.intial());

  Future<void> getUserProfile() async {
    final failureOrSuccess = await _fillProfileRepository.getUserProfile();

    state = failureOrSuccess.fold(
      (l) => FillProfileState.failure(l.message),
      (r) => FillProfileState.success(r),
    );
  }

  Future<void> createProfile(
    File imageUrl,
    String fullName,
    String nickName,
    String email,
    String phoneNumber,
    String gender,
  ) async {
    state = const FillProfileState.loading();
    final failureOrSuccess = await _fillProfileRepository.createProfile(
      imageUrl,
      fullName,
      nickName,
      email,
      phoneNumber,
      gender,
    );
    failureOrSuccess.fold(
      (l) => FillProfileState.failure(l.message),
      (r) => const FillProfileState.success(),
    );
  }
}
