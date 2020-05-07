import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class GoogleMapApp extends StatefulWidget {
  @override
  _GoogleMapAppState createState() => _GoogleMapAppState();
}

class _GoogleMapAppState extends State<GoogleMapApp> {
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('hello')),
      body: Stack(
          children: [_buildgoogleMap(context), buildInformationContainer()]),
    );
  }

  Widget _buildgoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(40.712776, -74.005994), zoom: 13),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          newyork1,
          newyork3,
          marker1,
          marker2,
          blueMarker,
          yorker,
          sorker
        },
      ),
    );
  }

  Widget buildInformationContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 12),
            buildCoolContainers(
                "https://lh5.googleusercontent.com/p/AF1QipO3VPL9m-b355xWeg4MXmOQTauFAEkavSluTtJU=w225-h160-k-no",
                40.738380,
                -73.988426,
                "Gramercy Tavern",
                3),
            SizedBox(width: 12),
            buildCoolContainers(
                "https://cdn.civitatis.com/espana/barcelona/galeria/tunel-transparente-aquarium.jpg",
                40.761421,
                -73.981667,
                "Amazing tank people",
                5),
            SizedBox(width: 12),
            buildCoolContainers(
                "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                40.732128,
                -73.999619,
                "Cool place",
                2)
          ],
        ),
      ),
    );
  }

  Widget buildCoolContainers(
      String image, double lat, double long, String address, int rating) {
    return GestureDetector(
        onTap: () {
          gotoLocation(lat, long);
        },
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Stack(children: [
            Container(
              width: 320,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 6),
                      blurRadius: 4,
                    )
                  ]),
            ),
            Positioned(
                right: 0,
                child: Container(
                  height: 150,
                  width: 120,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: new DecorationImage(
                          image: new NetworkImage(image), fit: BoxFit.fill)),
                )),
            Positioned.fill(
                child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    address,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Row(
                      children: List.generate(rating, (index) {
                        return Icon(Icons.star, color: Colors.amber);
                      }),
                    ))
              ],
            ))
          ]),
        ));
  }

  Future gotoLocation(double lat, double lan) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(lat, lan), zoom: 15, tilt: 50.0, bearing: 45)));
  }
}

Marker newyork1 = Marker(
    markerId: MarkerId('Newyork 1'),
    position: LatLng(40.738380, -73.988426),
    infoWindow: InfoWindow(title: 'Gramercy Traver'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose));

Marker newyork3 = Marker(
    markerId: MarkerId('NewYORK 3'),
    position: LatLng(40.738380, -73.983500),
    infoWindow: InfoWindow(title: 'New Location'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose));

Marker marker1 = Marker(
    markerId: MarkerId('gramercy'),
    position: LatLng(40.738380, -73.987005),
    infoWindow: InfoWindow(title: 'First one'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));

Marker marker2 = Marker(
    markerId: MarkerId('marker 2'),
    position: LatLng(0.761421, -73.981667),
    infoWindow: InfoWindow(title: 'marker 2'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));

Marker blueMarker = Marker(
  markerId: MarkerId('bluehill'),
  position: LatLng(40.732128, -73.999619),
  infoWindow: InfoWindow(title: 'Blue Hill'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker yorker = Marker(
    markerId: MarkerId('yorker'),
    position: LatLng(40.761421, -73.981667),
    infoWindow: InfoWindow(title: 'yorker'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed));

Marker sorker = Marker(
    markerId: MarkerId('Sorker'),
    position: LatLng(40.738380, -73.988426),
    infoWindow: InfoWindow(title: 'sorker'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose));
