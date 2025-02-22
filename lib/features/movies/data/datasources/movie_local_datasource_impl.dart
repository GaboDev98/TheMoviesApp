import 'package:hive/hive.dart';
import 'package:themoviesapp/features/movies/data/models/movie_model.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_local_data_source.dart';

class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  static const String _boxName = 'moviesBox';

  @override
  Future<void> cacheMovies(List<MovieModel> movies) async {
    final box = await Hive.openBox<MovieModel>(_boxName);
    await box.clear();
    await box.addAll(movies);
  }

  @override
  Future<List<MovieModel>> getCachedMovies() async {
    final box = await Hive.openBox<MovieModel>(_boxName);
    return box.values.toList();
  }
}
