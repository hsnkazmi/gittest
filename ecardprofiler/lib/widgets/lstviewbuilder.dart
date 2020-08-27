//todo list view builder

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statment df System',
      home: Scaffold(
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  StdntClass createState() => StdntClass();
}

class StdntClass extends State {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _students = ["qadeer", "shah", "aamir", "aabid", "zia"];
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _students.length,
        itemBuilder: /*1*/ (context, i) {
          print(i);
          return _buildRow(i);
        });
  }

  Widget _buildRow(int i) {
    return ListTile(
      title: Text(
        _students[i],
        style: _biggerFont,
      ),
      //    leading: CircleAvatar(backgroundImage: AssetImage('assets/imgs/$i.png'))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Students Names with images'),
        ),
        body: PageView(children: <Widget>[
          Container(
            child: _buildSuggestions(),
            //child: Center(child:Text("Page 1")),
            color: Colors.blue,
          ),
          Container(
            child: Center(child: Text("Page 2")),
            color: Colors.blueAccent,
          )
        ])
        //
        );
  }
}
