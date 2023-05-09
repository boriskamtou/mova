import '../domain/movie.dart';
import 'movie_dto.dart';

extension DTOListToDomainList on List<MovieDTO> {
  List<Movie> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension DomainListToDTOList on List<Movie> {
  List<MovieDTO> toDTO() {
    return map((e) => e as MovieDTO).toList();
  }
}
