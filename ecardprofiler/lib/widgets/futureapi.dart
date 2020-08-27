/* // TODO Implement this library.

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'title text',
      home: Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
                body: Container(
                  child: MyHomePage(),
                )
                    
        )
       
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
Future <List<User>> getUsers() async{
   var data = await http.get("https://primest.tv/wp-json/wp/v2/posts");
   var jsonData = json.decode(data.body);
   //print(jsonData);
   List <User> user = [];
   for (var u in jsonData){
     Map<String, dynamic> map = u["title"];
     Map<String, dynamic> map2 = u["content"];
     Map<String, dynamic> map3 = u["_links"];
     List<dynamic> lst=   map3["wp:featuredmedia"];
     Map<String, dynamic> maper = lst[0];
     print(maper["href"]);
    // print(map3["wp:featuredmedia"]);
  var data2 = await http.get(maper["href"]);
  var jsonData2 = json.decode(data2.body);
   
   //print("images/n");
   
   //print(jsonData2["link"]);
   
   
           //  print(jsonData2");

     User  userr= User(map["rendered"], map2['rendered'],jsonData2["link"]);

user.add(userr);
   }
   return user;
   }  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: Container(
         child: FutureBuilder(
           future: getUsers(),
           builder: (BuildContext context, AsyncSnapshot snapshot) {
             if(snapshot.data == null)
                {
                  return ListTile(
                  title: Text("Loading ..."),
             ) ;
                }
             else{
            return ListView.separated(
              itemCount: snapshot.data.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, index){
                    
             return Card(
      child: ListTile(
              
               title: Text(snapshot.data[index].title.toString()),
               onTap: (){Navigator.push(context,
               new MaterialPageRoute(builder: (context) => DetailPage(snapshot.data[index])));
               },
                leading: Image.network(snapshot.data[index].links),
                
                trailing: Icon(Icons.keyboard_arrow_right),
              

             ) );
               
           }
            );
           }}
         ),
          ),
       
    );
  }
}
class DetailPage extends StatelessWidget {
  DetailPage(this.user);

  final User user;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title),
      ),
      body: Text(user.content),
    );
  }
}
class User{
  final String title, content, links;

  User(this.title, this.content, this.links);
          } */
