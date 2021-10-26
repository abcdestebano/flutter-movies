import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/models/movie.dart';
import 'package:flutter_movies_app/src/widgets/card_movie.dart';

class PopularMovies extends StatelessWidget {
  final List<Movie>? movies;

  PopularMovies({this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 30),
      height: _screenSize.height * 0.2,
      child: PageView(
          pageSnapping: false,
          controller: PageController(initialPage: 1, viewportFraction: 0.3),
          children: _setPopularMovies()),
    );
  }

  List<Widget> _setPopularMovies() {
    return movies
            ?.map((movie) => Container(
                  margin: EdgeInsets.only(right: 2),
                  child: CardMovie(
                    urlImageMovie: movie.posterPath,
                  ),
                ))
            .toList() ??
        [];
  }
}
