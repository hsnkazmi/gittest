import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class xylophone extends StatelessWidget {
  var color;
  @override
  Widget build(BuildContext context) {
    colorbar(color, String fname) {
      return Expanded(
        child: FlatButton(
          child: Spacer(),
          color: color,
          onPressed: () {
            final audioPlayer = AudioCache();
            audioPlayer.play('note$fname.wav');
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("xylophone"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          colorbar(Colors.green, '1'),
          colorbar(Colors.lightBlue, '2'),
          colorbar(Colors.red, '3'),
          colorbar(Colors.yellow, '4'),
          colorbar(Colors.yellowAccent, '1'),
        ],
      ),
    );
  }
}
