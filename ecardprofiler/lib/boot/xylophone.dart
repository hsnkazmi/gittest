import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class xylophone extends StatelessWidget {
  var color;
  @override
  Widget build(BuildContext context) {
    Function music;
    var a;
    colorbar(color, String fname) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            final audioPlayer = AudioCache();

            audioPlayer.play('note$fname.wav');
          },
          child: Container(
            color: color,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("xylophone"),
      ),
      body: Column(
        children: <Widget>[
          colorbar(Colors.green, '1'),
          colorbar(Colors.lightBlue, '2'),
          colorbar(Colors.red, '3'),
          colorbar(Colors.yellow, '4'),
          colorbar(Colors.purple, '1'),
        ],
      ),
    );
  }
}
