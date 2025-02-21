import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:themoviesapp/features/movies/data/models/movie_model.dart';
import 'package:themoviesapp/features/movies/presentation/providers/movie_provider.dart';

class MoviesScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieProvider);
    final movieNotifier = ref.read(movieProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Películas Populares')),
      body: movieState.isLoading
          ? Center(child: CircularProgressIndicator())
          : movieState.error != null
              ? Center(child: Text('Error: ${movieState.error}'))
              : ListView.builder(
                  itemCount: movieState.movies.length,
                  itemBuilder: (context, index) {
                    final MovieModel movie = movieState.movies[index];
                    return ListTile(
                      leading: Image.network(
                          'https://image.tmdb.org/t/p/w200${movie.posterPath}'),
                      title: Text(movie.title),
                      subtitle: Text(movie.overview),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => movieNotifier.fetchPopularMovies(),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
