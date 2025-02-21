import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

double _toDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is int) return value.toDouble();
  if (value is double) return value;
  throw Exception("Unexpected type for double value: $value");
}

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int id,
    String? title,
    String? overview,
    @JsonKey(name: 'vote_average', fromJson: _toDouble)
    required double voteAverage,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'media_type') String? mediaType,
    required bool adult,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    required double popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    required bool video,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
