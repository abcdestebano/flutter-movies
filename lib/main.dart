import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      initialRoute: '/',
      routes: {'/': (BuildContext context) => Home()},
    );
  }
}
