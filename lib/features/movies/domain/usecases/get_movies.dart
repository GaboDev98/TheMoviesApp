import 'package:dartz/dartz.dart';
import 'package:movies/features/movies/domain/entities/movie.dart';
import 'package:movies/features/movies/domain/repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies(this.repository);

  Future<Either<String, List<Movie>>> call({int page = 1}) {
    return repository.getPopularMovies(page: page);
  }
}
