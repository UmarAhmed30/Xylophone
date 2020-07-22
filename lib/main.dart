import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded displayButton({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
              displayButton(color: Colors.red, soundNumber: 1),
              displayButton(color: Colors.orange, soundNumber: 2),
              displayButton(color: Colors.yellow, soundNumber: 3),
              displayButton(color: Colors.green, soundNumber: 4),
              displayButton(color: Colors.teal, soundNumber: 5),
              displayButton(color: Colors.blue, soundNumber: 6),
              displayButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
