import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController mapController;
  final center = LatLng(19.804265, -100.178982);
  String selectedStyle =
      'mapbox://styles/ramiromendozaarpan/ckhjs0lmq1v2j19nx052290ja';
  final styleStreed =
      'mapbox://styles/ramiromendozaarpan/ckhjs0lmq1v2j19nx052290ja';
  final styleSatelital =
      'mapbox://styles/ramiromendozaarpan/ckhjscdvj2s7j19ujxoozp103';

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: crearMapa(),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            child: Icon(Icons.streetview),
            onPressed: () {
              if(selectedStyle == styleStreed){
                selectedStyle = styleStreed;
              }
            },
          )
        ],
      ),
    );
  }

  MapboxMap crearMapa() {
    return MapboxMap(
      styleString: selectedStyle,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: center, zoom: 15),
    );
  }
}
