import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:themoviesapp/features/movies/data/datasources/movie_remote_data_source.dart';
import 'package:themoviesapp/features/movies/data/models/movie_response.dart';

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final Dio dio;
  final String apiKey = dotenv.env['API_KEY'] ?? '';
  final String baseUrl = dotenv.env['BASE_URL'] ?? '';

  MovieRemoteDataSourceImpl(this.dio);

  @override
  Future<MovieResponse> getPopularMovies({int page = 1}) async {
    try {
      final response = await dio.get(
        '$baseUrl/movie/popular',
        queryParameters: {
          'api_key': apiKey,
          'language': 'es-ES',
          'page': page,
        },
      );

      return MovieResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception('Error al obtener películas: ${e.message}');
    }
  }
}
