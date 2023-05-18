import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_dto.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/review_dto.dart';

import '../../../movies/core/domain/entities/movie_video.dart';
import '../../../movies/core/infrastructure/dtos/genre.dart';
import '../../../movies/core/infrastructure/dtos/genre_dto.dart';
import '../../../movies/core/infrastructure/dtos/movie_video_dto.dart';

extension DTOListMoviesToDomain on List<MovieDTO> {
  List<Movie> toDomain() {
    return map((movie) => movie.toDomain()).toList();
  }
}

extension DomainListMoviesToDTO on List<Movie> {
  List<MovieDTO> toDTO() {
    return map((movieDTO) => MovieDTO.fromDomain(movieDTO)).toList();
  }
}

extension DTOListVideoToDomain on List<MovieVideoDTO> {
  List<MovieVideo> toDomain() {
    return map((video) => video.toDomain()).toList();
  }
}

extension DomainListMoviesVideosToDTO on List<MovieVideo> {
  List<MovieVideoDTO> toDTO() {
    return map((video) => MovieVideoDTO.fromDomain(video)).toList();
  }
}

//------------------ Reviews extension
extension DTOListReviewsToDomain on List<ReviewDTO> {
  List<Review> toDomain() {
    return map((review) => review.toDomain()).toList();
  }
}

extension DomainListReviewsToDTO on List<Review> {
  List<ReviewDTO> toDTO() {
    return map((review) => ReviewDTO.fromDomain(review)).toList();
  }
}

//------------------ Genre extension

extension DTOListGenreToDomain on List<GenreDTO> {
  List<Genre> toDomain() {
    return map((genre) => genre.toDomain()).toList();
  }
}

extension DomainListGenreToDTO on List<Genre> {
  List<GenreDTO> toDTO() {
    return map((genre) => GenreDTO.fromDomain(genre)).toList();
  }
}
