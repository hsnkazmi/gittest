// TODO Implement this library.
import 'package:flutter/material.dart';

class widgetcontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Row(
          //        verticalDirection: VerticalDirection.up,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,

          children: <Widget>[
            Container(
              color: Colors.white,
              width: 100,
              height: double.infinity,
              //  margin: EdgeInsets.all(11),
              child: Text("data"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 100,
                  // margin: EdgeInsets.all(11),
                  child: Text("data 2"),
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                  // margin: EdgeInsets.all(11),
                  child: Text("data 2"),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              width: 100,
              height: double.infinity,
              // margin: EdgeInsets.all(11),
              child: Text("data 2"),
            ),
          ],
        ),
      ),
    );
  }
}
