import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/main.dart';
import 'package:mobile_w8_practice/EXERCISE-4/models/joke_data.dart';

class Joke extends StatelessWidget {
  final JokeData jokeData;

  const Joke({super.key, required this.jokeData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          jokeData.title,
          style: TextStyle(color: appColor, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10.0),
        Text(jokeData.description),
      ],
    );
  }
}
