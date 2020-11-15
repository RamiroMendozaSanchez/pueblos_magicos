import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/boton.dart';
import 'package:pueblos_magicos/components/ubicacion_hyr.dart';
import 'package:pueblos_magicos/lists/scrollCatalaogo.dart';
import 'package:pueblos_magicos/lists/scrollh_list.dart';
import 'package:pueblos_magicos/navbar/hotels.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/resources/constants.dart';

import 'descripctioHyR.dart';
import 'info_HyR.dart';

class DetallesH extends StatelessWidget {
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
              children: [
                info(),
                ScrollHList(),
                ubicacion(),
                DescripcionHyR(),
                SizedBox(height: 10.0,),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text("Revisa nuestras habitaciones", style: TextStyle(fontSize: 25.0, color: cTitlesAndText),),
                ),
                Catalogo(),
                BotonLlegada(color: cAssentInHoteles,)
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
    lugar: "Hotel",
    tipo: "Habitaciones",
    tipo2: "Restaurant",
    concurrencia: "Media",
    color: cAssentInHoteles,
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


