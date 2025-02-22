import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String? posterPath;
  final VoidCallback onTap;

  const MoviePoster({super.key, required this.posterPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: posterPath != null
            ? Image.network(
                'https://image.tmdb.org/t/p/w500$posterPath',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 50),
              )
            : const Icon(Icons.broken_image, size: 50),
      ),
    );
  }
}
