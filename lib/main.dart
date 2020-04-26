import 'package:alertapp/FutureBuilder.dart';
import 'package:alertapp/datatable.dart';
import 'package:flutter/material.dart';
import './table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is main Page',
            ),
            Text(
              'Seattle',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: new ListView(children: <Widget>[
            ListTile(
              leading: Icon(Icons.tab, color: Colors.red),
              title: new Text('Table with Widgets'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return Tableapp();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm, color: Colors.red),
              title: new Text('DataTable'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return Datatableapp();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_outline, color: Colors.red),
              title: new Text('Future Builder'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return FutureBuilderapp();
                }));
              },
            )
          ]),
        ),
      ),
    );
  }
}
