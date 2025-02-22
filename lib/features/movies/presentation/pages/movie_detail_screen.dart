import 'package:flutter/material.dart';
import 'package:themoviesapp/features/movies/data/models/movie_model.dart';
import 'package:themoviesapp/features/movies/presentation/widgets/movie_info.dart';
import 'package:themoviesapp/features/movies/presentation/widgets/movie_backdrop.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieModel movie;

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
              backdropPath: movie.backdropPath,
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
