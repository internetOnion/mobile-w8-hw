import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/main.dart';
import 'package:mobile_w8_practice/EXERCISE-4/models/joke_data.dart';
import 'package:mobile_w8_practice/EXERCISE-4/widgets/joke.dart';

class FavoriteCard extends StatefulWidget {
  final JokeData jokeData;

  const FavoriteCard({super.key, required this.jokeData});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool _isFavorite = false;

  void onFavoriteClick() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

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
          Expanded(flex: 7, child: Joke(jokeData: widget.jokeData)),
          IconButton(
            onPressed: onFavoriteClick,
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
