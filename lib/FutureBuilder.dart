import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// class FutureComplex extends StatefulWidget {
//   @override
//   _FutureComplexState createState() => _FutureComplexState();
// }

// class _FutureComplexState extends State<FutureComplex> {
//   List data=[];
//   Future getdatas() async{
//     var response= await http.get('https://jsonplaceholder.typicode.com/todos');
//     var jsondata= json.decode(response.body);

//     for(var u in jsondata){
//       Employee employeeDatas = Employee(u["id"],u["title"],u["completed"]);
//     }

//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

class FutureBuilderapp extends StatefulWidget {
  @override
  _FutureBuilderappState createState() => _FutureBuilderappState();
}

class _FutureBuilderappState extends State<FutureBuilderapp> {
  Future getdataUsers() async {
    var response = await http.get('https://jsonplaceholder.typicode.com/todos');
    var jsonData = json.decode(response.body);

    List data = []; //do <Employee>

    for (var u in jsonData) {
      Employee employeData = Employee(u["id"], u["title"], u["completed"]);

      data.add(employeData);
    }
    return data; //this is important here

    print(data.length); //not needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Future Builder'),
      ),
      body: SafeArea(
          child: FutureBuilder(
        initialData: 'Waiting',
        future: getdataUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(child: Text('Null data wait for some time'));
          }
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  //  leading: Text(snapshot.data[index].id),
                  title: Text(snapshot.data[index].title),
                  //   subtitle: Text(snapshot.data[index].body),
                );
              });
        },
      )),
    );
  }
}

class Employee {
  int id;
  String title;
  bool body;
  Employee(this.id, this.title, this.body);
}
