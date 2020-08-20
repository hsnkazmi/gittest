import 'package:flutter/material.dart';
class widgat extends StatelessWidget {

final String txt;
final Function fprint;
final IconData icon;
widgat(this.txt,this.fprint,this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: fprint,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                
                child: ListTile(
                  title: Text(txt,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    icon,
                    color: Colors.blue[500],
                  ),
                ),
              ),
            );
  }
}