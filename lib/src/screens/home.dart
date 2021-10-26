import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/models/movie.dart';
import 'package:flutter_movies_app/src/providers/movies_provider.dart';
import 'package:flutter_movies_app/src/widgets/card_movie.dart';
import 'package:flutter_movies_app/src/widgets/on_playing_movies.dart';
import 'package:flutter_movies_app/src/widgets/popular_movies.dart';

class Home extends StatelessWidget {
  MoviesProvider moviesProvider = MoviesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Movies app'),
        backgroundColor: Colors.redAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Container(
        child: Column(
          children: [_setMoviesCards(), _setPopularMovies(context)],
        ),
      ),
    );
  }

  Widget _setMoviesCards() {
    return FutureBuilder(
      future: moviesProvider.getOnPlayingMovies(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return OnPlayingMovies(
            movies: snapshot.data,
          );
        } else {
          return _loading(80);
        }
      },
    );
  }

  Widget _setPopularMovies(BuildContext context) {
    return FutureBuilder(
      future: moviesProvider.getPopularMovies(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return PopularMovies(
            movies: snapshot.data,
          );
        } else {
          return _loading(0);
        }
      },
    );
  }

  Widget _loading(double marginTop) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
