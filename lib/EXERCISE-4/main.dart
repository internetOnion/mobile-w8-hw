import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-4/data/jokes.dart';
import 'package:mobile_w8_practice/EXERCISE-4/widgets/favorite_list.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text('Favorite Jokes'),
      ),
      body: FavoriteList(jokes),
    ),
  ),
);
