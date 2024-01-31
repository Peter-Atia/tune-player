import 'package:flutter/material.dart';
import 'package:tunes_player/screens/home.dart';
void main() {
  runApp(TuneApp());
}
class TuneApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen(),
    );
  }
}

