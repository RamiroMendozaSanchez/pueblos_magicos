import 'package:flutter/material.dart';
import 'package:pueblos_magicos/screens/fullscreenmap.dart';

class MapaView  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
        body: FullScreenMap(),
      ),
    );
  }
}


