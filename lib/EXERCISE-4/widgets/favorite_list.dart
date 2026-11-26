import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/models/joke_data.dart';
import 'package:mobile_w8_practice/EXERCISE-4/widgets/favorite_card.dart';

class FavoriteList extends StatefulWidget {
  final List<JokeData> favoriteJokes;

  const FavoriteList(this.favoriteJokes, {super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  int? currFavIndex;

  void _setFavorite(int index) {
    setState(() {
      currFavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.favoriteJokes.length,
      itemBuilder: (context, index) => FavoriteCard(
        jokeData: widget.favoriteJokes[index],
        isFavorite: (currFavIndex == index),
        onFavoriteTap: () => _setFavorite(index)
      ),
    );
  }
}
