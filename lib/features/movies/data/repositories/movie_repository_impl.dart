import 'package:dartz/dartz.dart';
import 'package:themoviesapp/features/movies/domain/entities/movie.dart';
import 'package:themoviesapp/features/movies/domain/repositories/movie_repository.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_local_data_source.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  final MovieLocalDataSource localDataSource;

  MovieRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<String, List<Movie>>> getPopularMovies({int page = 1}) async {
    try {
      final response = await remoteDataSource.getPopularMovies(page: page);
      final movies = response.results ?? [];

      await localDataSource.cacheMovies(movies);

      return Right(movies.map((movie) => movie.toEntity()).toList());
    } catch (e) {
      final cachedMovies = await localDataSource.getCachedMovies();
      if (cachedMovies.isNotEmpty) {
        return Right(cachedMovies.map((movie) => movie.toEntity()).toList());
      }
      return Left('Error al obtener películas: $e');
    }
  }
}
