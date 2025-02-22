import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  final String? title;
  final double voteAverage;
  final String? releaseDate;
  final String? overview;

  const MovieInfo(
      {super.key,
      required this.title,
      required this.voteAverage,
      required this.releaseDate,
      this.overview});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'Sin título',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.yellow, size: 20),
            const SizedBox(width: 5),
            Text(
              voteAverage.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Fecha de estreno: ${releaseDate ?? "Desconocida"}',
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(height: 16),
        Text(
          'Descripción',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(
          overview ?? 'No hay descripción disponible.',
          style: const TextStyle(fontSize: 16, color: Colors.black),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
