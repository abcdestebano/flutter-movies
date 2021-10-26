import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/models/movie.dart';
import 'package:flutter_movies_app/src/widgets/card_movie.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class OnPlayingMovies extends StatelessWidget {
  final List<Movie>? movies;

  OnPlayingMovies({this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CardMovie(
            urlImageMovie: movies?[index].posterPath,
          );
        },
        itemCount: movies?.length,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
