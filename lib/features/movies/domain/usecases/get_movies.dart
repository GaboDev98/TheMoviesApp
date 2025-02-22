import 'package:dartz/dartz.dart';
import 'package:themoviesapp/features/movies/domain/entities/movie.dart';
import 'package:themoviesapp/features/movies/domain/repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository repository;

  GetPopularMovies(this.repository);

  Future<Either<String, List<Movie>>> call() async {
    return await repository.getPopularMovies();
  }
}
