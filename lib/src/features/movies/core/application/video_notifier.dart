import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie_video.dart';
import 'package:mova/src/features/movies/core/infrastructure/repositories/video_repository.dart';

part 'video_notifier.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const VideoState._();
  const factory VideoState.loading() = _Loading;
  const factory VideoState.data(List<MovieVideo> videos) = _Data;
  const factory VideoState.failure([String? message]) = _Failure;
}

class VideoNotifier extends StateNotifier<VideoState> {
  final VideoRepository _repository;
  VideoNotifier(this._repository) : super(const VideoState.loading());

  Future<void> getVideoMovies(int movieId) async {
    state = const VideoState.loading();

    final failureOrResponse = await _repository.getMovieVideos(movieId);

    state = failureOrResponse.fold(
      (l) => VideoState.failure(l.message),
      (r) {
        return VideoState.data(r);
      },
    );
  }
}
