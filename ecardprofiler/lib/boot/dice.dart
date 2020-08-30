import 'package:flutter/material.dart';
import 'dart:math';

class dice extends StatefulWidget {
  dice({Key key}) : super(key: key);

  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  int dicnum = 1;
  int dicnum2 = 1;
  randomizer() {
    setState(() {
      dicnum = Random().nextInt(6) + 1;
      dicnum2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('assets/dice$dicnum.png'),
                  onPressed: () {
                    randomizer();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('assets/dice$dicnum2.png'),
                  onPressed: () {
                    randomizer();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
