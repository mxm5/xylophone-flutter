import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play_sound(int sound_number){
    final my_player = AudioCache();
    my_player.play('note$sound_number.wav');
  }
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
                    play_sound(1);
                  },
                ),  FlatButton(
                  color: Colors.orange,
                  onPressed: (){
                    play_sound(2);
                  },
                ),  FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    play_sound(3);
                  },
                ),  FlatButton(
                  color: Colors.green,
                  onPressed: (){
                    play_sound(4);
                  },
                ),  FlatButton(
                  color: Colors.teal,
                  onPressed: (){
                    play_sound(5);
                  },
                ),  FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    play_sound(6);
                  },
                ), FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    play_sound(7);
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
