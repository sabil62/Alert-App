import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_map/flutter_map.dart';

class MapBoxApp extends StatefulWidget {
  @override
  _MapBoxAppState createState() => _MapBoxAppState();
}

class _MapBoxAppState extends State<MapBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('MapBox')),
      body: new FlutterMap(
        options: new MapOptions(center: new LatLng(27.7172, 85.3240), zoom: 13),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.tiles.mapbox.com/v4/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1Ijoic2FiaWw2MiIsImEiOiJjazk0ZmZwODgwNnVyM29ueHAzeGQ3ZTRnIn0.z8Fqzc6NLuBZQRD3PKv03A',
              'id': 'mapbox.streets',
            },
          ),
          MarkerLayerOptions(markers: [
            new Marker(
                width: 80,
                height: 80,
                point: new LatLng(27.7172, 85.3240),
                builder: (ctx) => new Container(
                      child: IconButton(
                          icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                          color: Colors.red,
                          iconSize: 45,
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                      color: Colors.white,
                                      child: new Center(
                                          child: new Column(
                                        children: <Widget>[
                                          Text('This is the map'),
                                          Container(
                                              height: 150,
                                              decoration: new BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  gradient: new LinearGradient(
                                                      colors: [
                                                        Colors.pink,
                                                        Colors.red
                                                      ],
                                                      begin: Alignment.topLeft,
                                                      end: Alignment
                                                          .bottomRight)))
                                        ],
                                      )));
                                });
                          }),
                    ))
          ])
        ],
      ),
    );
  }
}
