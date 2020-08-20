import 'package:flutter/material.dart';
import 'package:ecardprofiler/widget/widgat.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String mobilenumber = "03127066628";
  String email = 'mailto:kazmi.namal@gmail.com';
  String webadress = "https://google.com";
  String country = "Pakistan, SaudiArabi, Turkey";
 _showMyDialog(String Titl, String Msg) async {
   
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!

    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(Titl),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(Msg),
             
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: Text("Title"),
      ) ،*/
      backgroundColor: Colors.teal[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/prof.png"),
            ),
            Text(
              "Husnain Ali Shah",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'DoHyeon',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Flutter Beginner",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: Divider(
                color: Colors.black,
              ),
            ),
            widgat(mobilenumber, () async {
              final mobi = 'tel:$mobilenumber';
             if (await launcher.canLaunch(mobi)) {
                await launcher.launch(mobi);
              } else {
                print('Could not launch $mobi');
              }
            }, Icons.contact_phone),
            widgat(email, () async {
              if (await launcher.canLaunch(email)) {
                await launcher.launch(email);
              } else {
                print('Could not launch $email');
              }
            }, Icons.email),
            widgat(webadress, () async {
              if (await launcher.canLaunch(webadress)) {
                await launcher.launch(webadress);
              } else {
                throw 'Could not launch $webadress';
              }
            }, Icons.web),
            widgat(country, ()  {
   //
_showMyDialog("titless1","message1");
            }, Icons.location_city),
          ],
        ),
      ),
   
    );

 //showdialglog

  }
}

 /*  */