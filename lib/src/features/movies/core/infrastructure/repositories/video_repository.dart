import 'package:dartz/dartz.dart';
import 'package:mova/src/features/core/infrastructure/extension/movie_extension.dart';
import 'package:mova/src/features/movies/core/domain/entities/movie_video.dart';
import 'package:mova/src/features/movies/core/domain/failures/movie_failure.dart';
import 'package:mova/src/features/movies/core/infrastructure/remote/movie_video_remote_service.dart';

class VideoRepository {
  final MovieVideoRemoteService _remoteService;

  VideoRepository(this._remoteService);

  Future<Either<MovieFailure, List<MovieVideo>>> getMovieVideos(
      int movieId) async {
    final response = await _remoteService.getMovieVideos(movieId);

    return response.when(
      success: (data) => right(data.videos.toDomain()),
      failure: (exception) => left(MovieFailure.api(exception.toString())),
    );
  }
}
