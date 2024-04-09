import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.deepPurple,
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note1.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.deepOrange,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note2.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.blueAccent,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note3.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.redAccent,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note4.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.black45,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note5.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.greenAccent,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note6.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.indigoAccent,
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    player.play(
                      AssetSource('note7.wav'),
                    );
                  },
                  child: const Text(
                    'Click Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
