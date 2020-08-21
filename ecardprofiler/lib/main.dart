import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ktabs = <Tab>[
      Tab(
        icon: Icon(Icons.sd_card),
      ),
      Tab(
        icon: Icon(Icons.ac_unit),
      ),
      Tab(
        icon: Icon(Icons.ac_unit),
      ),
    ];
    var ktabview = <Widget>[
      Center(
        child: Text("data"),
      ),
      Center(
        child: Text("data"),
      ),
      Center(
        child: Text("data"),
      )
    ];
    return MaterialApp(
      home: DefaultTabController(
          length: ktabs.length,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: ktabs), //tab widgets
            ),
            body: TabBarView(children: ktabview), //widgets
          )),
    );
  }
}

/*  
 one old way
 home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Text("1"),
                Text("2"),
                Text("3"),
              ]),
            ),
            body: TabBarView(children: [
              Text("1"),
              Text("2"),
              Text("3"),
            ]),
          )),
    */
