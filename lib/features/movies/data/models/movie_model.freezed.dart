// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'vote_average', fromJson: _toDouble)
  double get voteAverage => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get adult => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @HiveField(11)
  double get popularity => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @HiveField(13)
  bool get video => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? title,
      @HiveField(2) String? overview,
      @HiveField(3)
      @JsonKey(name: 'vote_average', fromJson: _toDouble)
      double voteAverage,
      @HiveField(4) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(5) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(6) @JsonKey(name: 'original_title') String? originalTitle,
      @HiveField(7) @JsonKey(name: 'media_type') String? mediaType,
      @HiveField(8) bool adult,
      @HiveField(9)
      @JsonKey(name: 'original_language')
      String? originalLanguage,
      @HiveField(10) @JsonKey(name: 'genre_ids') List<int>? genreIds,
      @HiveField(11) double popularity,
      @HiveField(12) @JsonKey(name: 'release_date') String? releaseDate,
      @HiveField(13) bool video,
      @HiveField(14) @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? overview = freezed,
    Object? voteAverage = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
    Object? mediaType = freezed,
    Object? adult = null,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = null,
    Object? releaseDate = freezed,
    Object? video = null,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String? title,
      @HiveField(2) String? overview,
      @HiveField(3)
      @JsonKey(name: 'vote_average', fromJson: _toDouble)
      double voteAverage,
      @HiveField(4) @JsonKey(name: 'poster_path') String? posterPath,
      @HiveField(5) @JsonKey(name: 'backdrop_path') String? backdropPath,
      @HiveField(6) @JsonKey(name: 'original_title') String? originalTitle,
      @HiveField(7) @JsonKey(name: 'media_type') String? mediaType,
      @HiveField(8) bool adult,
      @HiveField(9)
      @JsonKey(name: 'original_language')
      String? originalLanguage,
      @HiveField(10) @JsonKey(name: 'genre_ids') List<int>? genreIds,
      @HiveField(11) double popularity,
      @HiveField(12) @JsonKey(name: 'release_date') String? releaseDate,
      @HiveField(13) bool video,
      @HiveField(14) @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? overview = freezed,
    Object? voteAverage = null,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? originalTitle = freezed,
    Object? mediaType = freezed,
    Object? adult = null,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = null,
    Object? releaseDate = freezed,
    Object? video = null,
    Object? voteCount = freezed,
  }) {
    return _then(_$MovieModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.overview,
      @HiveField(3)
      @JsonKey(name: 'vote_average', fromJson: _toDouble)
      required this.voteAverage,
      @HiveField(4) @JsonKey(name: 'poster_path') this.posterPath,
      @HiveField(5) @JsonKey(name: 'backdrop_path') this.backdropPath,
      @HiveField(6) @JsonKey(name: 'original_title') this.originalTitle,
      @HiveField(7) @JsonKey(name: 'media_type') this.mediaType,
      @HiveField(8) required this.adult,
      @HiveField(9) @JsonKey(name: 'original_language') this.originalLanguage,
      @HiveField(10) @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @HiveField(11) required this.popularity,
      @HiveField(12) @JsonKey(name: 'release_date') this.releaseDate,
      @HiveField(13) required this.video,
      @HiveField(14) @JsonKey(name: 'vote_count') this.voteCount})
      : _genreIds = genreIds;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? overview;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average', fromJson: _toDouble)
  final double voteAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @HiveField(5)
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @HiveField(6)
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @HiveField(7)
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  @HiveField(8)
  final bool adult;
  @override
  @HiveField(9)
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  final List<int>? _genreIds;
  @override
  @HiveField(10)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final double popularity;
  @override
  @HiveField(12)
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @HiveField(13)
  final bool video;
  @override
  @HiveField(14)
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, overview: $overview, voteAverage: $voteAverage, posterPath: $posterPath, backdropPath: $backdropPath, originalTitle: $originalTitle, mediaType: $mediaType, adult: $adult, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      overview,
      voteAverage,
      posterPath,
      backdropPath,
      originalTitle,
      mediaType,
      adult,
      originalLanguage,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      releaseDate,
      video,
      voteCount);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@HiveField(0) required final int id,
      @HiveField(1) final String? title,
      @HiveField(2) final String? overview,
      @HiveField(3)
      @JsonKey(name: 'vote_average', fromJson: _toDouble)
      required final double voteAverage,
      @HiveField(4) @JsonKey(name: 'poster_path') final String? posterPath,
      @HiveField(5) @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @HiveField(6)
      @JsonKey(name: 'original_title')
      final String? originalTitle,
      @HiveField(7) @JsonKey(name: 'media_type') final String? mediaType,
      @HiveField(8) required final bool adult,
      @HiveField(9)
      @JsonKey(name: 'original_language')
      final String? originalLanguage,
      @HiveField(10) @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @HiveField(11) required final double popularity,
      @HiveField(12) @JsonKey(name: 'release_date') final String? releaseDate,
      @HiveField(13) required final bool video,
      @HiveField(14)
      @JsonKey(name: 'vote_count')
      final int? voteCount}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get overview;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average', fromJson: _toDouble)
  double get voteAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @HiveField(5)
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @HiveField(6)
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @HiveField(7)
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  @HiveField(8)
  bool get adult;
  @override
  @HiveField(9)
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @HiveField(10)
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @override
  @HiveField(11)
  double get popularity;
  @override
  @HiveField(12)
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @HiveField(13)
  bool get video;
  @override
  @HiveField(14)
  @JsonKey(name: 'vote_count')
  int? get voteCount;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
