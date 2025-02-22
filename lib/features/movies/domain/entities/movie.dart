import 'package:themoviesapp/features/movies/data/models/movie_model.dart';

class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final String releaseDate;
  final String originalLanguage;
  final List<int> genreIds;

  const Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.releaseDate,
    required this.originalLanguage,
    required this.genreIds,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          overview == other.overview &&
          posterPath == other.posterPath &&
          backdropPath == other.backdropPath &&
          voteAverage == other.voteAverage &&
          releaseDate == other.releaseDate &&
          originalLanguage == other.originalLanguage &&
          genreIds == other.genreIds;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      overview.hashCode ^
      posterPath.hashCode ^
      backdropPath.hashCode ^
      voteAverage.hashCode ^
      releaseDate.hashCode ^
      originalLanguage.hashCode ^
      genreIds.hashCode;
}

extension MovieModelMapper on MovieModel {
  Movie toEntity() {
    return Movie(
      id: id,
      title: title ?? '',
      overview: overview ?? '',
      posterPath: posterPath ?? '',
      backdropPath: backdropPath ?? '',
      voteAverage: voteAverage,
      releaseDate: releaseDate ?? '',
      originalLanguage: originalLanguage ?? 'N/A',
      genreIds: genreIds ?? [],
    );
  }
}
