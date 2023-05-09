import 'package:mova/src/features/core/movies/infrastructure/sembast_database.dart';
import 'package:sembast/sembast.dart';

import '../../../dtos/movie_response_dto.dart';

class MoviesLocalStorageService {
  final SembastDatabase _sembastDatabase;

  MoviesLocalStorageService(this._sembastDatabase);

  final _store = intMapStoreFactory.store('popularMovies');

  Future<void> upsertMovieResponse(MovieResponseDTO movieResponseDTO) async {
    await _store
        .record(1)
        .put(_sembastDatabase.instance, movieResponseDTO.toJson());
  }

  Future<MovieResponseDTO> getOfLocalMovies(int page) async {
    final movieResponseJson =
        await _store.record(1).get(_sembastDatabase.instance);

    return MovieResponseDTO.fromJson(movieResponseJson!);
  }
}
