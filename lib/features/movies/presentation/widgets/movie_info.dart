import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieInfo extends StatelessWidget {
  final String? title;
  final double voteAverage;
  final String? releaseDate;
  final String? overview;

  const MovieInfo({
    super.key,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
    this.overview,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? localizations.untitled,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.yellow, size: 20),
            const SizedBox(width: 5),
            Text(
              voteAverage.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).textTheme.titleLarge?.color),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          localizations.release_date(releaseDate ?? localizations.untitled),
          style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).textTheme.titleLarge?.color),
        ),
        const SizedBox(height: 16),
        Text(
          localizations.description,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.titleLarge?.color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          overview ?? localizations.no_description,
          style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).textTheme.titleLarge?.color),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
