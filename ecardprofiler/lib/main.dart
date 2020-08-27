import 'package:flutter/material.dart';
import 'package:ecardprofiler/widgets/listss.dart';
import 'package:ecardprofiler/widgets/profile.dart';
import 'package:ecardprofiler/widgets/futureapi.dart';
import 'package:ecardprofiler/widgets/lstviewbuilder.dart';

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
        //'myprofile': (context) => MyHome()
      },
    );
  }
}

class Btns extends StatelessWidget {
  const Btns({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All samples"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'listgrid');
                },
                child: Text("Lists/ grid/ mixins")),
            MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Myprofile();
                  }));
                  //Navigator.pushNamed(context, 'myprofile');
                },
                child: Text("myprofile"))
          ],
        ),
      )),
    );
  }
}
