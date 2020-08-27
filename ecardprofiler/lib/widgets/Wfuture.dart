/* 
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Parent Class',
      home: Scaffold(

        body: Center(
          //child: Text(wordPair.asPascalCase),
          child: StudentList(),
        ),
      ),
    );
  }
}
// hello test
class StudentListState extends State<StudentList> {
  var names = ["AQ", "Shah", "Bharion", "Abid", "Zia", "Saeed"];

  Future<List<Student>> _getStudentsList1() async{
    var data = await http.get("https://jsonplaceholder.typicode.com/posts");
    var jsonData = json.decode(data.body);
    List<Student> students = [];

    for(var stu in jsonData)
    {
      students.add(
          new Student(stu["userId"].toString(), stu["id"].toString(), stu["title"], stu["body"])
      );
    }

   // log("lenght: "+students.length.toString());

    return students;

  }

  Future<List<Student2>> _getStudentsList2() async{
    var data = await http.get("https://primest.tv/wp-json/wp/v2/posts?per_page=1");
    var jsonData = json.decode(data.body);
    List<Student2> students = [];


    for(var stu in jsonData)
    {
      students.add(new Student2(stu["title"].toString())); // snapshot.data[index].id
    }

   // log("lenght: "+jsonData[0].toString());

    return students;

  }

  Widget _readStudentJSONList2()
  {
    return Container(
      child: FutureBuilder(
        future: _getStudentsList2(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.data == null)
          {
            return Container(
                child:Center(
                    child: Text("Loading 2")
                )
            );
          }
          else
          {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, index){
                return ListTile(
                  title: new Text(snapshot.data[index].title),
                  //          leading: new Text(snapshot.data[index].id),
                );
              },
            );
          }
        },
      ),
    );

  }

  Widget _readStudentJSONList1()
  {
    return Container(
      child: FutureBuilder(
        future: _getStudentsList2(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.data == null)
          {
            return Container(
                child:Center(
                    child: Text("Loading 1")
                )
            );
          }
          else
          {
            return ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, index){
                return ListTile(
                  title: new Text(snapshot.data[index].title),
                  leading: new Text(snapshot.data[index].id),
                );
              },
            );
          }
        },
      ),
    );

  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: names.length,

        itemBuilder:  (context, i) {
          return _buildRow(names[i]);
        });
  }
  Widget _buildRow(String pair) {

    return Card(
      child: ListTile(
        title: Text(pair),
        leading: Image.asset('images/cube.jpg'),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Holo Posts'),
        ),



        body: PageView(
          children: <Widget>[
            Container(
                child: _buildSuggestions()
            ),
            Container(
                child: _readStudentJSONList2()
            ),
            Container(
                child: Center(
                    child: new Text("Page 3")
                )
            ),
          ],
        )


    );
  }
}



class StudentList extends StatefulWidget {
  @override
  StudentListState createState() => StudentListState();
}

class Student{

  final String userID, id, title, body;

  Student(this.userID, this.id, this.title, this.body);
}

class Student2{

  final String title;

  Student2(this.title);
}
 */
