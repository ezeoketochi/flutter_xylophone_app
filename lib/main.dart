import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone App"),
          centerTitle: true,
        ),
        // backgroundColor: Colors.teal,
        body: BodyPage(),
        // backgroundColor: Colors.white,
      ),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({Key key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MusicNote(Colors.red, 1),
          MusicNote(Colors.blue, 2),
          MusicNote(Colors.green, 3),
          MusicNote(Colors.yellow, 4),
          MusicNote(Colors.grey, 5),
          MusicNote(Colors.teal, 6),
          MusicNote(Colors.green, 7),
        ],
      ),
    );
  }
}

Widget MusicNote(Color color, int number) {
  return Expanded(
    child: TextButton(
      child: Container(
        color: color,
      ),
      onPressed: () {
        final player = AudioCache();
        player.play("note$number.wav");
      },
    ),
  );
}
