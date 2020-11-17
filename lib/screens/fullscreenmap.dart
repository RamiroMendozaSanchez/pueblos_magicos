import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as lc;
import 'package:permission_handler/permission_handler.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  final position = DEFAULT_LOCATION;
  static const DEFAULT_LOCATION = LatLng(19.804265, -100.178982);
  MapType mapType = MapType.normal;
  GoogleMapController controller;
  lc.Location location;
  bool myLocationEnabled = false;
  bool myLocationButtonEnabled = false;

  @override
  void initState() {
    requestPerms();
  }

 /* updateLocation(currentLocation) {
    setState(() {
      print("ubicacion actual ${currentLocation.latitude}, ${currentLocation.longitude}");
      this.currentLocation = LatLng(currentLocation.latitude, currentLocation.longitude);
     /* this.controller.animateCamera(
            CameraUpdate.newCameraPosition(CameraPosition(
                target:
                    this.currentLocation,
                zoom: 11)),
          );*/
    });
    dispose();
  }*/

  /*locationChange(){
   location.onLocationChanged.listen((lc.LocationData cLoc) {
     if(cLoc!=null){
        updateLocation(cLoc);
     }
   });
  }*/


  requestPerms() async {
    Map<Permission, PermissionStatus> statuses =
        await [Permission.locationAlways].request();

    var status = statuses[Permission.locationAlways];

    if (status == PermissionStatus.denied) {
      requestPerms();
    } else {
      enableGPS();
    }
  }

  enableGPS() async {
    location = lc.Location();
    bool serviceStatusResult = await location.requestService();

    if (!serviceStatusResult) {
      enableGPS();
    } else {
      updateStatus();
      //locationChange();
    }
  }

  updateStatus() {
    setState(() {
      myLocationButtonEnabled = true;
      myLocationEnabled = true;
    });
    dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: crearMapa(),
    );
  }

  onMapCreated(GoogleMapController controller) {
    this.controller = controller;
  }

  Widget crearMapa() {
    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: onMapCreated,
          mapType: mapType,
          initialCameraPosition: CameraPosition(
            target: position,
            zoom: 15,
          ),
          myLocationEnabled: myLocationEnabled,
          myLocationButtonEnabled: myLocationButtonEnabled,
          markers: {
            Marker(
              markerId: MarkerId(position.toString()),
              position: position,
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueRose),
            ),
          },
        ),
        SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          elevation: 8.0,
          children: [
            SpeedDialChild(
              label: "Satelital",
              child: Icon(Icons.satellite),
              onTap: () => setState(() => mapType = MapType.satellite),
            ),
            SpeedDialChild(
              label: "Normal",
              child: Icon(Icons.map),
              onTap: () => setState(() => mapType = MapType.normal),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
