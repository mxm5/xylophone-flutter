import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note1.wav');
                  },
                ),  FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note2.wav');
                  },
                ),  FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note3.wav');
                  },
                ),  FlatButton(
                  color: Colors.green,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note4.wav');
                  },
                ),  FlatButton(
                  color: Colors.teal,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note5.wav');
                  },
                ),  FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    final my_player = AudioCache();
                    my_player.play('note6.wav');
                  },
                ), FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    final my_player = AudioCache();
                    my_player.play('note7.wav');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
