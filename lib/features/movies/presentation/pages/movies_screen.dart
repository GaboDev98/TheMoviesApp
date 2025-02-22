import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:themoviesapp/features/movies/domain/entities/movie.dart';
import 'package:themoviesapp/features/movies/presentation/providers/movie_provider.dart';
import 'package:themoviesapp/features/movies/presentation/widgets/movie_poster.dart';

class MoviesScreen extends ConsumerStatefulWidget {
  const MoviesScreen({super.key});

  @override
  ConsumerState<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends ConsumerState<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => ref.read(movieProvider.notifier).fetchPopularMovies());
  }

  @override
  Widget build(BuildContext context) {
    final movieState = ref.watch(movieProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Películas Populares')),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(movieProvider.notifier).fetchPopularMovies();
        },
        child: movieState.isLoading
            ? const Center(child: CircularProgressIndicator())
            : movieState.error != null
                ? Center(child: Text('Error: ${movieState.error}'))
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.6,
                        ),
                        itemCount: movieState.movies.length,
                        itemBuilder: (context, index) {
                          final Movie movie = movieState.movies[index];

                          return MoviePoster(
                            posterPath: movie.posterPath,
                            onTap: () {
                              context.push('/detail_movie', extra: movie);
                            },
                          );
                        }),
                  ),
      ),
    );
  }
}
