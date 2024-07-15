import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colour, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colour: Colors.red, soundNum: 1),
              buildKey(colour: Colors.green, soundNum: 2),
              buildKey(colour: Colors.blue, soundNum: 3),
              buildKey(colour: Colors.purple, soundNum: 4),
              buildKey(colour: Colors.orange, soundNum: 5),
              buildKey(colour: Colors.yellow, soundNum: 6),
              buildKey(colour: Colors.teal, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
