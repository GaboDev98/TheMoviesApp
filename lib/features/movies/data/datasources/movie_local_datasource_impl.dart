import 'package:hive/hive.dart';
import 'package:movies/core/network/image_service.dart';
import 'package:movies/core/storage/image_cache_service.dart';
import 'package:movies/features/movies/data/models/movie_model.dart';
import 'package:movies/features/movies/data/datasources/movie_local_data_source.dart';

class MovieLocalDataSourceImpl implements MovieLocalDataSource {
  static const String _boxName = 'moviesBox';

  @override
  Future<void> cacheMovies(List<MovieModel> movies) async {
    final box = await Hive.openBox<MovieModel>(_boxName);
    await box.clear();

    for (var movie in movies) {
      if (movie.posterPath != null) {
        final cachedImage = ImageCacheService.getCachedImage(movie.posterPath!);

        if (cachedImage == null) {
          try {
            final imageBytes = await ImageService.fetchImage(movie.posterPath!);
            await ImageCacheService.cacheImage(movie.posterPath!, imageBytes);
          } catch (e) {}
        }
      }
      await box.put(movie.id, movie);
    }
  }

  @override
  Future<List<MovieModel>> getCachedMovies() async {
    final box = await Hive.openBox<MovieModel>(_boxName);
    return box.values.toList();
  }
}
