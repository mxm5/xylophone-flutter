import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
//TODO: we will make a bar that moves throgh the notes
//tODO: we will make a social network of people to make songs with this and share to gather maybe

class XylophoneApp extends StatelessWidget {
  void play_sound(int sound_number) {
    final my_player = AudioCache();
    my_player.play('note$sound_number.wav');
  }

  Expanded make_tile(int sound_num, Color color, IconData icon,) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(70),
          side: BorderSide(color: Colors.white)
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 70,
        ),
        color: color,
        onPressed: () {
          play_sound(sound_num);
        },
      ),
    );
  }

  Expanded build_tile_icrease(int sound_num, Color color, IconData icon,double size){
    return Expanded(
      child: Row(
        children: <Widget>[
//          SizedBox(width: size,),
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[make_tile(sound_num,color, icon)],),
          ),
          SizedBox(width: size,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  build_tile_icrease(1, Colors.red, Icons.whatshot,100),
                  SizedBox(height: 3,),
                  build_tile_icrease(2, Colors.orange, Icons.wb_sunny,85),
                  SizedBox(height: 3,),
                  build_tile_icrease(3, Colors.yellow, Icons.brightness_2,70),
                  SizedBox(height: 3,),
                  build_tile_icrease(4, Colors.green, Icons.terrain,55),
                  SizedBox(height: 3,),
                  build_tile_icrease(5, Colors.teal, Icons.invert_colors,30),
                  SizedBox(height: 3,),
                  build_tile_icrease(6, Colors.blue, Icons.cloud_queue,15),
                  SizedBox(height: 3,),
                  build_tile_icrease(7, Colors.purple, Icons.ac_unit,0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
