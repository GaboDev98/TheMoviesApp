import 'package:flutter/material.dart';

class MovieBackdrop extends StatelessWidget {
  final String? backdropPath;
  final int movieId;

  const MovieBackdrop(
      {super.key, required this.backdropPath, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: movieId,
      child: backdropPath != null
          ? Image.network(
              'https://image.tmdb.org/t/p/w780$backdropPath',
              width: double.infinity,
              fit: BoxFit.cover,
            )
          : Container(
              height: 200,
              color: Colors.grey[900],
              child: const Center(
                child: Icon(Icons.broken_image, size: 50, color: Colors.white),
              ),
            ),
    );
  }
}
