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
    AudioPlayer player = AudioPlayer();
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
          Xylo(player: player, color: Colors.red, number: 1),
          Xylo(player: player, color: Colors.orange, number: 2),
          Xylo(player: player, color: Colors.blue, number: 3),
          Xylo(player: player, color: Colors.pinkAccent, number: 4),
          Xylo(player: player, color: Colors.green, number: 5),
          Xylo(player: player, color: Colors.yellow, number: 6),
          Xylo(player: player, color: Colors.purple, number: 7),
        ],
      ),
    );
  }
}

class Xylo extends StatelessWidget {
  const Xylo({
    super.key,
    required this.player,
    required this.color,
    required this.number,
  });

  final AudioPlayer player;
  final Color color;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            player.play(AssetSource('audios/note$number.wav'));
          },
          child: Text(''),
        ),
      ),
    );
  }
}
