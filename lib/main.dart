import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int seletctedNode) {
    final player = AudioCache();
    player.play('note$seletctedNode.wav');
  }

  Expanded buildKey(int sound, Color clr) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(clr)),
        onPressed: () {
          playSound(sound);
        },
        child: const Text(''),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.yellow),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.pink),
              buildKey(5, Colors.cyan),
              buildKey(6, Colors.green),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
