import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Xylophone',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('audios/note1.wav'));
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
              child: TextButton(
                onPressed: () {
                  AudioPlayer player = AudioPlayer();
                  player.play(AssetSource('audios/note2.wav'));
                },
                child: Text(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
