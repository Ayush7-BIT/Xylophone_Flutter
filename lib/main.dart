import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded callBack({Color color, int soundNumber}) {
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
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              callBack(color: Colors.red, soundNumber: 1),
              callBack(color: Colors.orange, soundNumber: 2),
              callBack(color: Colors.yellow, soundNumber: 3),
              callBack(color: Colors.green, soundNumber: 4),
              callBack(color: Colors.green.shade900, soundNumber: 5),
              callBack(color: Colors.blue, soundNumber: 6),
              callBack(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
