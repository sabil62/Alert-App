import 'package:alertapp/files/ClipPathAppbar.dart';
import 'package:alertapp/files/FutureBuilder.dart';
import 'package:alertapp/files/charts.dart';
import 'package:alertapp/files/coolBookUI.dart';
import 'package:alertapp/files/datatable.dart';
import 'package:alertapp/files/forms.dart';
import 'package:alertapp/files/http.dart';
import 'package:alertapp/files/listviewCluster.dart';
import 'package:alertapp/files/mapbox.dart';
import 'package:alertapp/files/stream.dart';
import 'package:flutter/material.dart';
import './files/table.dart';
import './files/gradient.dart';

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
            SizedBox(
              height: 15,
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
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.chat_bubble_outline, color: Colors.red),
              title: new Text('Http'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return HttpApp();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: new Text('Future Builder'),
              leading: Icon(Icons.alarm_on, color: Colors.teal),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return FutureBuilderapp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Cool UIr'),
              leading:
                  Icon(Icons.youtube_searched_for, color: Colors.yellow[800]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return CoolUIBook();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Cool Appbars ClipPath'),
              leading: Icon(Icons.lightbulb_outline, color: Colors.orange[800]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return ClipPathAppBar();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Charts'),
              leading: Icon(Icons.pie_chart_outlined, color: Colors.deepPurple),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return ChartApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('ListView Layered'),
              leading: Icon(Icons.view_array, color: Colors.green[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return ListViewsLayered();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('ListView Nested'),
              leading: Icon(Icons.view_array, color: Colors.green[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return ListViewNested();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('MapBOX'),
              leading: Icon(Icons.map, color: Colors.deepOrangeAccent[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return MapBoxApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Gradient Box UI'),
              leading: Icon(Icons.gradient, color: Colors.deepPurple[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return GradientApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Form'),
              leading: Icon(Icons.picture_as_pdf, color: Colors.orange[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return FormApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('Stream'),
              leading: Icon(Icons.view_stream, color: Colors.red[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return StreamApp();
                }));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
