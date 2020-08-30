import 'package:flutter/material.dart';

class Qanswers extends StatefulWidget {
  Qanswers({Key key}) : super(key: key);

  @override
  _QanswersState createState() => _QanswersState();
}

class _QanswersState extends State<Qanswers> {
  List<Icon> icns = [
    Icon(
      Icons.check,
      color: Colors.blue,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question and Answers'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                  child: Text(
                'hers comes questions',
                style: TextStyle(fontSize: 25),
              )),
            ),
            FlatButton(
              padding: EdgeInsets.all(22),
              onPressed: () {
                setState(() {
                  icns.removeLast();
                });
              },
              color: Colors.green,
              child: Text("yes"),
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.red,
              child: Text("No"),
            ),
            Row(
              children: icns,
            )
          ],
        ),
      )),
    );
  }
}
