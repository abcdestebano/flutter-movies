import 'package:flutter_movies_app/src/models/movie.dart';

class Movies {
  List<Movie> movies = [];

  Movies();

  Movies.fromJsonList(List<dynamic>? jsonList) {
    if (jsonList == null) return;
    movies = jsonList.map((item) => Movie.fromJsonMap(item)).toList();
  }
}
