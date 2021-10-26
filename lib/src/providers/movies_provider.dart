import 'package:flutter_movies_app/src/models/movie.dart';
import 'package:flutter_movies_app/src/models/movies.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MoviesProvider {
  String _apiKey = "dc5ceb4ee432272da39ec411f4078888";
  String _url = "api.themoviedb.org";
  String _language = "es-ES";

  Future<List<Movie>> getOnPlayingMovies() async {
    final url = Uri.https(_url, "3/movie/now_playing",
        {'api_key': _apiKey, 'language': _language});

    final response = await http.get(url);

    final data = json.decode(response.body);
    final results = Movies.fromJsonList(data['results']);

    return results.movies;
  }

  Future<List<Movie>> getPopularMovies() async {
    final url = Uri.https(
        _url, "3/movie/popular", {'api_key': _apiKey, 'language': _language});

    final response = await http.get(url);

    final data = json.decode(response.body);
    final results = Movies.fromJsonList(data['results']);

    return results.movies;
  }
}
