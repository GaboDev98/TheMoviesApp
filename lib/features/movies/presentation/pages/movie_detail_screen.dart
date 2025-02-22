import 'package:flutter/material.dart';
import 'package:movies/features/movies/domain/entities/movie.dart';
import 'package:movies/features/movies/presentation/widgets/movie_info.dart';
import 'package:movies/features/movies/presentation/widgets/movie_backdrop.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Detalle de la película')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MovieBackdrop(
              backdropPath: movie.posterPath,
              movieId: movie.id,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: MovieInfo(
                title: movie.title,
                voteAverage: movie.voteAverage,
                releaseDate: movie.releaseDate,
                overview: movie.overview,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
