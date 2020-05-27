import 'package:alertapp/file_neumorphic/neumorphic0.dart';
import 'package:alertapp/file_neumorphic/neumorphic1.dart';
import 'package:alertapp/file_neumorphic/neumorphic2blue.dart';
import 'package:alertapp/files/ClipPathAppbar.dart';
import 'package:alertapp/files/FutureBuilder.dart';
import 'package:alertapp/files/charts.dart';
import 'package:alertapp/files/coolBookUI.dart';
import 'package:alertapp/files/datatable.dart';
import 'package:alertapp/files/forms.dart';
import 'package:alertapp/files/googlemap.dart';
import 'package:alertapp/files/grid.dart';
import 'package:alertapp/files/http.dart';
import 'package:alertapp/files/listviewCluster.dart';
import 'package:alertapp/files/mapbox.dart';
import 'package:alertapp/files/stream.dart';
import 'package:alertapp/files/tableAndClipPath.dart';
import 'package:alertapp/files2/greenUI.dart';
import 'package:alertapp/files2/greenUIusingTable.dart';
import 'package:alertapp/files2/newUI.dart';
import 'package:alertapp/files2/tabComplex.dart';
import 'package:alertapp/files2/tabMiddle.dart';
import 'package:alertapp/files2/tabSimple.dart';
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
              title: new Text('Google Maps'),
              leading: Icon(Icons.zoom_out_map, color: Colors.orange[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return GoogleMapApp();
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
            SizedBox(height: 15),
            ListTile(
              title: new Text('Appbar Table Combination'),
              leading: Icon(Icons.stars, color: Colors.orange[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return TableAndClipPathApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: new Text('GridView'),
              leading: Icon(Icons.android, color: Colors.brown[700]),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return GridViewApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              leading: new Icon(Icons.table_chart, color: Colors.black54),
              title: new Text('TABS'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return TabSimpleApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              leading: new Icon(Icons.traffic, color: Colors.red[600]),
              title: new Text('TAB MIDDLE'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return TabBarMiddleApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              leading: new Icon(Icons.remove_shopping_cart,
                  color: Colors.purple[700]),
              title: new Text('TAB BAR COMPLEX'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return TabBarComplexApp();
                }));
              },
            ),
            SizedBox(height: 15),
            ListTile(
              leading: new Icon(
                Icons.battery_charging_full,
                color: Colors.greenAccent[700],
                size: 34,
              ),
              title: new Text('Green Covid Tracker UI'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return GreenApp();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.panorama_horizontal, color: Colors.green),
              title: new Text('GreenUI with table instead of grid'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return GreenUIfromTable();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.verified_user, color: Colors.purple),
              title: new Text('New UI CoronaUI'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return NewUiApp();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.library_books, color: Colors.yellow[800]),
              title: new Text('Neumorphic Design'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return Neumorphic0();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.label, color: Colors.red[800]),
              title: new Text('Neumorphic 01'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return Neurmorphic1App();
                }));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.edit_location, color: Colors.purple[800]),
              title: new Text('Neumorphic 02'),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return Neumorphic2App();
                }));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
