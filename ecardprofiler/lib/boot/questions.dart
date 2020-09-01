import 'package:flutter/material.dart';
import 'package:ecardprofiler/boot/questionsbank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Qanswers extends StatefulWidget {
  Qanswers({Key key}) : super(key: key);

  @override
  _QanswersState createState() => _QanswersState();
}

class _QanswersState extends State<Qanswers> {
  List<Icon> icns = [];
  Qbank qb = Qbank();
  @override
  Widget build(BuildContext context) {
    chkAnser(bool answer) {
      if (qb.nextAnswer() == answer) {
        icns.add(
          Icon(
            Icons.check,
            color: Colors.blue,
          ),
        );
      } else {
        icns.add(
          Icon(
            Icons.close,
            color: Colors.blue,
          ),
        );
      }
      setState(() {
        if (qb.showdiolog = true) {
          Alert(
                  context: context,
                  title: "Questions Ended",
                  desc: "RFLUTTER Plugin")
              .show();
          icns.clear();
        }
        qb.setQnumber();
      });
    }

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
                qb.nextQuestion(),
                style: TextStyle(fontSize: 25),
              )),
            ),
            FlatButton(
              padding: EdgeInsets.all(22),
              onPressed: () {
                chkAnser(true);
              },
              color: Colors.green,
              child: Text("True"),
            ),
            FlatButton(
              onPressed: () {
                chkAnser(false);
              },
              color: Colors.red,
              child: Text("False"),
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
