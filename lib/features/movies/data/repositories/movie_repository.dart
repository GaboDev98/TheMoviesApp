import 'package:dartz/dartz.dart';
import 'package:themoviesapp/features/movies/data/models/movie_model.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_remote_data_source.dart';

class MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepository(this.remoteDataSource);

  Future<Either<String, List<MovieModel>>> getPopularMovies(
      {int page = 1}) async {
    try {
      final response = await remoteDataSource.getPopularMovies(page: page);
      return Right(response.results);
    } catch (e) {
      return Left('Error al obtener películas: $e');
    }
  }
}
