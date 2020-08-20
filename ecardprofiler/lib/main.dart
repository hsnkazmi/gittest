import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Statsapp());

class Statsapp extends StatefulWidget {
  Statsapp({Key key}) : super(key: key);

  @override
  _StatsappState createState() => _StatsappState();
}

class _StatsappState extends State<Statsapp> {
  int randomnumber = 1;
  caluculus() {
    setState(() {
      randomnumber = Random().nextInt(9) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
        ),
        body: Center(
          child: Text("$randomnumber"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: caluculus(),
          child: Icon(Icons.ac_unit),
          backgroundColor: Colors.amberAccent,
          tooltip: "tooltip",
        ),
      ),
    );
  }
}
