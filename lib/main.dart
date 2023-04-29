import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  
  void playSound(int SoundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$SoundNumber.wav'));
  }
  Expanded buildKey({Color?color, int?soundNumber}){
   return Expanded(
      child: GestureDetector(
          onTap: () {
            playSound(soundNumber!);
          },
          child: Container(
            color: color,
          ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black ,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.teal,soundNumber: 5),
              buildKey(color: Colors.blue,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
