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
        icon: Icon(Icons.vertical_align_bottom),
      ),
      Tab(
        icon: Icon(Icons.swap_horizontal_circle),
      ),
      Tab(
        icon: Icon(Icons.grid_on),
      ),
      Tab(
        text: "Mixed",
      )
    ];
    var ktabview = <Widget>[
      Center(
        child: horizental_list(),
      ),
      Center(
        child: vertical_list(),
      ),
      Center(
        child: grid_layout(),
      ),
      Center(
        child: Mixins(listgenrate(10)),
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

class horizental_list extends StatelessWidget {
  const horizental_list({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          for (int i = 0; i <= 3; i++)
            ListTile(
              title: Text("title"),
              leading: Icon(Icons.ac_unit),
            ),
          Container(
            height: 40,
            margin: EdgeInsets.all(10),
            child: Center(child: Text("data")),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.00),
                color: Colors.green),
          )
        ],
      ),
    );
  }
}

class vertical_list extends StatelessWidget {
  const vertical_list({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(10, (inxex) {
        return Center(
          child: Container(
              alignment: Alignment.center,
              height: 200.99,
              width: 200.99,
              child: Text("grid $inxex"),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.00),
                  color: Colors.amberAccent)),
        );
      }),
    );
  }
}

class grid_layout extends StatelessWidget {
  const grid_layout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (inxex) {
        return Container(
            alignment: Alignment.center,
            child: Text("grid $inxex"),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.00),
                color: Colors.amberAccent));
      }),
    );
  }
}

class Mixins extends StatelessWidget {
  final List<item> atoms;
  Mixins(this.atoms);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: atoms.length,
        itemBuilder: (BuildContext context, int index) {
          var item = atoms[index];
          if (item is headingitems) {
            return Text("messageitems $index");
          } else
            return Text("heading $index");
        },
      ),
    );
  }
}

abstract class item {}

class headingitems extends item {
  String headingitem;
  headingitems(this.headingitem);
}

class messageitems extends item {
  String messageitem;
  messageitems(this.messageitem);
}

List<item> listgenrate(int count) {
  return List<item>.generate(count, (index) {
    return index % 3 == 0
        ? headingitems("headingitem $index")
        : messageitems("messageitem $index");
  });
}
