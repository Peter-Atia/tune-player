import 'package:flutter/material.dart';
import 'package:tunes_player/models/tune_model.dart';
import '../widgets/tune_item.dart';
class HomeScreen extends StatelessWidget {
  final List<TuneModel> tunes =const [
    TuneModel(color: Colors.red, sound: 'sounds/note1.wav'),
    TuneModel(color: Colors.orange, sound: 'sounds/note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'sounds/note3.wav'),
    TuneModel(color: Colors.green, sound: 'sounds/note4.wav'),
    TuneModel(color: Colors.greenAccent, sound: 'sounds/note5.wav'),
    TuneModel(color: Colors.blue, sound: 'sounds/note6.wav'),
    TuneModel(color: Colors.purpleAccent, sound: 'sounds/note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff263139),
        centerTitle: true,
        title: const Text(
          "Tune App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList()),
    );
  }
}
