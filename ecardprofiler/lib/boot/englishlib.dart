import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart' as eng;

class engword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English Words"),
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              for (int a = 1; a <= 10; a++)
                ListTile(
                  title: Text(eng.nouns[a]),
                  subtitle: Text(eng.adjectives[a]),
                )
            ],
          ), //
        ),
      ),
    );
  }
}
