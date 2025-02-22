import 'package:movies/features/movies/data/models/movie_response.dart';

abstract class MovieRemoteDataSource {
  Future<MovieResponse> getPopularMovies({int page = 1});
}
