import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_remote_data_source.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_remote_datasource_impl.dart';
import 'package:themoviesapp/features/movies/data/models/movie_model.dart';
import 'package:themoviesapp/features/movies/data/repositories/movie_repository.dart';
import 'package:dartz/dartz.dart';

class MovieState {
  final bool isLoading;
  final List<MovieModel> movies;
  final String? error;

  MovieState({this.isLoading = false, this.movies = const [], this.error});
}

final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/"));
});

final movieRemoteDataSourceProvider = Provider<MovieRemoteDataSource>((ref) {
  final dio = ref.watch(dioProvider);
  return MovieRemoteDataSourceImpl(dio);
});

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final remoteDataSource = ref.watch(movieRemoteDataSourceProvider);
  return MovieRepository(remoteDataSource);
});

final movieProvider = StateNotifierProvider<MovieNotifier, MovieState>((ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return MovieNotifier(repository);
});

class MovieNotifier extends StateNotifier<MovieState> {
  final MovieRepository repository;

  MovieNotifier(this.repository) : super(MovieState());

  Future<void> fetchPopularMovies() async {
    state = MovieState(isLoading: true);

    final Either<String, List<MovieModel>> result =
        await repository.getPopularMovies();

    result.fold(
      (error) => state = MovieState(error: error),
      (movies) => state = MovieState(movies: movies),
    );
  }
}
