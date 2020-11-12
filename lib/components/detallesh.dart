import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/boton.dart';
import 'package:pueblos_magicos/components/ubicacion_hyr.dart';
import 'package:pueblos_magicos/lists/scrollCatalaogo.dart';
import 'package:pueblos_magicos/lists/scrollhyr_list.dart';
import 'package:pueblos_magicos/resources/constants.dart';

import 'descripctioHyR.dart';
import 'info_HyR.dart';

class DetallesH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: cBackgroudApp,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            info(),
            ScrollHyRList(),
            ubicacion(),
            DescripcionHyR(),
            SizedBox(height: 10.0,),
            Text("Revisa nuestras habitaciones", style: TextStyle(fontSize: 30.0, color: cTitlesAndText),),
            Catalogo(),
            BotonLlegada(color: cAssentInHoteles,)
          ],
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
    color: cAssentInHoteles
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


