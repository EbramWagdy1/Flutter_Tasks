import 'package:dio/dio.dart';
import 'package:screen91/models/movie_model.dart';

abstract class ApiClient {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  static const String apiKey = 'ae299d82e583cb37081e0472b983b137';

  static Future<List<String>> getPosters() async {
    try {
      var response = await dio.get(
        '/trending/movie/day',
        queryParameters: {
          'api_key': apiKey,
        },
      );
      List data = response.data['results'];
      return data
          .map<String>((e) =>
              "https://image.tmdb.org/t/p/w500${e['backdrop_path']}")
          .toList();
    } catch (e) {
      throw Exception('Failed to load posters: $e');
    }
  }

  static Future<List<Movie>> getTrendingMovies() async {
    try {
      final response = await dio.get(
        '/trending/movie/day',
        queryParameters: {
          'api_key': apiKey,
        },
      );
      List data = response.data['results'];
      return data.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load movies: $e');
    }
  }
}