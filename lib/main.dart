import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playsound(int soundno){
    final player= AudioCache();
    player.play('note$soundno.wav');
  }

  Expanded loveable({Color color, int soundno} )
  {
    return Expanded(child: FlatButton)(
      color: color,
      onPressed: (){
        playsound(soundno);
      },
    ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              loveable(color: Colors.red, soundno:1),
              loveable(color: Colors.orange, soundno:2),
              loveable(color: Colors.blue, soundno:3),
              loveable(color: Colors.green, soundno:4),
              loveable(color: Colors.indigo, soundno:5),
              loveable(color: Colors.purple, soundno:6),
              loveable(color: Colors.white, soundno:7),


            ],
          ),
        ),
      ),
    );
  }
}