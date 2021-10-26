import 'package:flutter/material.dart';
import 'package:flutter_movies_app/src/utils/create_image_url.dart';

class CardMovie extends StatelessWidget {
  final String? urlImageMovie;

  CardMovie({this.urlImageMovie});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: FadeInImage(
        placeholder: AssetImage('assets/no-image.jpg'),
        image: NetworkImage(createImageUrl(urlImageMovie)),
        fit: BoxFit.cover,
      ),
    );
  }
}
