import 'package:flutter/material.dart';
import 'package:ecardprofiler/widgets/listss.dart';
import 'package:ecardprofiler/widgets/profile.dart';
import 'package:ecardprofiler/boot/widgatcontainer.dart';
//import 'package:ecardprofiler/widgets/futureapi.dart';
//import 'package:ecardprofiler/widgets/lstviewbuilder.dart';
import 'package:ecardprofiler/boot/dice.dart';
import 'package:ecardprofiler/boot/englishlib.dart';
import 'package:ecardprofiler/boot/xylophone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Btns(),
        'listgrid': (context) => TabBarDemo(),
        'cotainerwidg': (context) => widgetcontainer(),
        'dice': (context) => dice(),
        'engwords': (context) => engword(),
        'xylophone': (context) => xylophone()
        //'myprofile': (context) => MyHome()
      },
    );
  }
}

class Btns extends StatelessWidget {
  const Btns({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    pagelink(String prout, String btext) {
      return RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '$prout');
          },
          child: Text('$btext'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("All samples"),
      ),
      body: SafeArea(
          child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pagelink('listgrid', 'Lists/ grid/ mixins'),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Myprofile();
                    }));
                    //Navigator.pushNamed(context, 'myprofile');
                  },
                  child: Text("myprofile")),
              pagelink('cotainerwidg', 'Container - Widget'),
              pagelink('dice', 'Random Dice'),
              pagelink('engwords', 'Englis words'),
              pagelink('xylophone', 'xylophone')
            ],
          ),
        ),
      )),
    );
  }
}
