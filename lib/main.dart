import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () async {
          playSound(soundNumber);
        },
        child: const Text(
          'Click Me',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.deepPurple, soundNumber: 1),
              buildKey(color: Colors.blueAccent, soundNumber: 2),
              buildKey(color: Colors.greenAccent, soundNumber: 3),
              buildKey(color: Colors.indigoAccent, soundNumber: 4),
              buildKey(color: Colors.orangeAccent, soundNumber: 5),
              buildKey(color: Colors.pinkAccent, soundNumber: 6),
              buildKey(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
