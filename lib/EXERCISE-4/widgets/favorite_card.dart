import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/models/joke_data.dart';
import 'package:mobile_w8_practice/EXERCISE-4/widgets/joke.dart';

class FavoriteCard extends StatelessWidget {
  final JokeData _jokeData;
  final bool _isFavorite;
  final VoidCallback _onFavoriteTap;

  const FavoriteCard({super.key, required this._jokeData, required this._isFavorite, required this._onFavoriteTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.grey)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 7, child: Joke(jokeData: _jokeData)),
          IconButton(
            onPressed: _onFavoriteTap,
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
