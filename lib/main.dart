import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }

  Expanded buildkey({Color color, int no}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(no);
        },
        color: color,
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
            children: [
              buildkey(color: Colors.red, no: 1),
              buildkey(color: Colors.orange[700], no: 2),
              buildkey(color: Colors.yellow, no: 3),
              buildkey(color: Colors.green[500], no: 4),
              buildkey(color: Colors.teal[600], no: 5),
              buildkey(color: Colors.blue, no: 6),
              buildkey(color: Colors.purple, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
