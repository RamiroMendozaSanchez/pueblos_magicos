import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/Catmenu.dart';
import 'package:pueblos_magicos/components/menu.dart';
import 'package:pueblos_magicos/components/ubicacion_hyr.dart';
import 'package:pueblos_magicos/lists/scrollh_list.dart';
import 'package:pueblos_magicos/lists/scrollr_list.dart';
import 'package:pueblos_magicos/navbar/restaurants.dart';
import 'package:pueblos_magicos/resources/constants.dart';

import '../navigator.dart';
import 'boton.dart';
import 'descripctioHyR.dart';
import 'info_HyR.dart';

class DetallesR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: cBackgroudApp,
      child: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                info(),
                ScrollRList(),
                ubicacion(),
                DescripcionHyR(),
                SizedBox(height: 10.0,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text("Consulta el Menú digital", style: TextStyle(fontSize: 25.0, color: cTitlesAndText),),
                ),
                Menu(img: "assets/images/menu.jpg",),
                BotonLlegada(color: cAssentRestorantsAndButtonVideo,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget info(){
  return InfoHyR(
      nombre: "Posada del Carmen",
      lugar: "Restaurante",
      tipo: "Cafetería",
      tipo2: "Snack",
      concurrencia: "Media",
      color: cAssentRestorantsAndButtonVideo,
      ruta: MaterialPageRoute(builder: (context) => NavigationBar()),
  );
}

Widget ubicacion(){
  return UbicacionCardHyR(
    color: cAssentInHoteles,
    ubicacion: "Allende 8, Centro, Tlalpujahua de Rayón, Michoacán",
    phone: "+52 786 119 1310",
    cierre: "10:00 P.M.",
  );
}