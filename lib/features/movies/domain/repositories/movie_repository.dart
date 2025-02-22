import 'package:dartz/dartz.dart';
import 'package:movies/features/movies/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<Either<String, List<Movie>>> getPopularMovies({int page = 1});
}
