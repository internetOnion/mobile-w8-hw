import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/models/joke_data.dart';
import 'package:mobile_w8_practice/EXERCISE-4/widgets/favorite_card.dart';

class FavoriteList extends StatelessWidget {
  final List<JokeData> favoriteJokes;

  const FavoriteList(this.favoriteJokes, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteJokes.length,
      itemBuilder: (context, index) =>
          FavoriteCard(jokeData: favoriteJokes[index]),
    );
  }
}
