import 'package:mova/src/features/movies/core/domain/entities/movie.dart';
import 'package:mova/src/features/movies/core/infrastructure/dtos/movie_dto.dart';

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
