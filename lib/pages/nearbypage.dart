import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:newfile/components/toolbar.dart';

class nearbypage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:ashbar(title: "Nearby"),
      body:FlutterMap(options: MapOptions(
        initialCenter: LatLng(29.3722, 78.1378),
        initialZoom: 10,
      ),children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          // Plenty of other options available!
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(29.3722, 78.1378),
              width: 80,
              height: 100,
              child: Icon(Icons.location_on_outlined,size: 25,),
            ),
          ],
        ),
      ],),
    );
  }
  
}