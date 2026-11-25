import 'package:flutter/material.dart';
import 'package:mobile_w8_practice/EXERCISE-2/ui/screens/temperature_screen.dart';
import 'package:mobile_w8_practice/EXERCISE-2/ui/screens/welcome_screen.dart';

enum AppScreen { temperature, welcome }

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  AppScreen _currScreen = AppScreen.welcome;

  Widget get _screen => switch (_currScreen) {
    AppScreen.temperature =>  TemperatureScreen(),
    AppScreen.welcome => WelcomeScreen(onStart: start),
  };

  void start() {
    setState(() {
      _currScreen = AppScreen.temperature;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff16C062), Color(0xff00BCDC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _screen,
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
