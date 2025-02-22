import 'package:hive/hive.dart';
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
@HiveType(typeId: 0)
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @HiveField(0) required int id,
    @HiveField(1) String? title,
    @HiveField(2) String? overview,
    @HiveField(3)
    @JsonKey(name: 'vote_average', fromJson: _toDouble)
    required double voteAverage,
    @HiveField(4) @JsonKey(name: 'poster_path') String? posterPath,
    @HiveField(5) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(6) @JsonKey(name: 'original_title') String? originalTitle,
    @HiveField(7) @JsonKey(name: 'media_type') String? mediaType,
    @HiveField(8) required bool adult,
    @HiveField(9) @JsonKey(name: 'original_language') String? originalLanguage,
    @HiveField(10) @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @HiveField(11) required double popularity,
    @HiveField(12) @JsonKey(name: 'release_date') String? releaseDate,
    @HiveField(13) required bool video,
    @HiveField(14) @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
