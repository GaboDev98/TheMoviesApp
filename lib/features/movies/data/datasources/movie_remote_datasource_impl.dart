import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies/features/movies/data/models/movie_response.dart';
import 'package:movies/features/movies/data/datasources/movie_remote_data_source.dart';

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final Dio dio;
  final String apiKey = dotenv.env['TMDB_API_KEY'] ?? '';
  final String baseUrl = dotenv.env['BASE_URL'] ?? '';
  final String bearerToken = dotenv.env['BEARER_TOKEN'] ?? '';

  MovieRemoteDataSourceImpl(this.dio);

  @override
  Future<MovieResponse> getPopularMovies({int page = 1}) async {
    try {
      String systemLanguage = PlatformDispatcher.instance.locale.languageCode;

      const supportedLanguages = ['en', 'es'];

      String language = supportedLanguages.contains(systemLanguage)
          ? '$systemLanguage-US'
          : 'en-US';

      final response = await dio.get(
        '$baseUrl/account/5e472f121e9225001abebb6f/movie/recommendations',
        queryParameters: {
          'api_key': apiKey,
          'language': language,
          'page': page,
        },
        options: Options(
          headers: {
            'accept': 'application/json',
            'Authorization': 'Bearer $bearerToken',
          },
        ),
      );

      return MovieResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Error al obtener películas: ${e.message}');
    }
  }
}
