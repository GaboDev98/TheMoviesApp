import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies/features/movies/domain/entities/movie.dart';
import 'package:movies/features/movies/domain/usecases/get_movies.dart';
import 'package:movies/features/movies/domain/repositories/movie_repository.dart';
import 'package:movies/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:movies/features/movies/data/datasources/movie_local_data_source.dart';
import 'package:movies/features/movies/data/datasources/movie_remote_data_source.dart';
import 'package:movies/features/movies/data/datasources/movie_local_datasource_impl.dart';
import 'package:movies/features/movies/data/datasources/movie_remote_datasource_impl.dart';

class MovieState {
  final bool isLoading;
  final List<Movie> movies;
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

final movieLocalDataSourceProvider = Provider<MovieLocalDataSource>((ref) {
  return MovieLocalDataSourceImpl();
});

final movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final remoteDataSource = ref.watch(movieRemoteDataSourceProvider);
  final localDataSource = ref.watch(movieLocalDataSourceProvider);
  return MovieRepositoryImpl(remoteDataSource, localDataSource);
});

final getPopularMoviesProvider = Provider<GetPopularMovies>((ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetPopularMovies(repository);
});

final movieProvider = StateNotifierProvider<MovieNotifier, MovieState>((ref) {
  final getPopularMovies = ref.watch(getPopularMoviesProvider);
  return MovieNotifier(getPopularMovies);
});

class MovieNotifier extends StateNotifier<MovieState> {
  final GetPopularMovies getPopularMovies;
  int _currentPage = 1;
  bool _isFetching = false;

  MovieNotifier(this.getPopularMovies) : super(MovieState());

  Future<void> fetchPopularMovies({bool isLoadMore = false}) async {
    if (_isFetching) return;
    _isFetching = true;

    if (!isLoadMore) {
      _currentPage = 1;
      state = MovieState(isLoading: true, movies: []);
    }

    final result = await getPopularMovies(page: _currentPage);

    result.fold(
      (error) => state = MovieState(error: error, movies: state.movies),
      (movies) {
        if (isLoadMore) {
          state = MovieState(movies: [...state.movies, ...movies]);
        } else {
          state = MovieState(movies: movies);
        }
        _currentPage++;
      },
    );

    _isFetching = false;
  }
}
