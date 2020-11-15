import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/detallesh.dart';
import 'package:pueblos_magicos/components/encabezado.dart';
import 'package:pueblos_magicos/components/hyr_card.dart';
import 'package:pueblos_magicos/components/thyr_Card.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class HotelsScreen extends StatefulWidget {
  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: cBackgroudApp,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                encabezado(),
                scrollPopu()
              ],
            ),
            //SizedBox(height: 10.0,),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Todos los hoteles", style: TextStyle(fontSize: 30.0, color: cTitlesAndText),),
            ),
            scrollTodo()
          ],
        ),
      ),
    );
  }

  Widget scrollPopu(){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            card1(),
            SizedBox(width: 15,),
            card2(),
            SizedBox(width: 15,),
            card3()
          ],
        ),
      ),
    );
  }

  Widget scrollTodo(){
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                tcard1(),
                SizedBox(width: 15,),
                tcard2(),
              ],
            ),
            SizedBox(width: 15,),
            Row(
              children: [
                tcard1(),
                SizedBox(width: 15,),
                tcard2(),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

Widget encabezado(){
  return Encabezado(
    color: cAssentInHoteles,
    etiqueta1: "Encuentra",
    lugar: "Hoteles",
    descripcion: "Estos son los más populares",
    extra: "",
  );
}

Widget card1(){
  return CardHR(
    img: "assets/images/hoteles.jpg",
    nombre: "Posada del carmen",
    catpre: "Desde \$569.00",
    iconos: Icons.star,
    ruta: MaterialPageRoute(builder: (context) => DetallesH()),
  );
}

Widget card2(){
  return CardHR(
    img: "assets/images/hoteles.jpg",
    nombre: "Posada del carmen",
    catpre: "Desde \$569.00",
    iconos: Icons.star,
    ruta: MaterialPageRoute(builder: (context) => DetallesH()),
  );
}

Widget card3(){
  return CardHR(
    img: "assets/images/hoteles.jpg",
    nombre: "Posada del carmen",
    catpre: "Desde \$569.00",
    iconos: Icons.star,
    ruta: MaterialPageRoute(builder: (context) => DetallesH()),
  );
}

Widget tcard1(){
  return TCardsHyR(
    color: cAssentInHoteles,
    nombre: "Hotel Posada del Carmen",
    catpre: "Desde \$569.00",
    icon: Icons.star,
    image: "assets/images/hoteles.jpg",
    ruta: MaterialPageRoute(builder: (context) => DetallesH()),
  );
}

Widget tcard2(){
  return TCardsHyR(
      color: cAssentInHoteles,
      nombre: "Hotel Posada del Carmen",
      catpre: "Desde \$569.00",
      icon: Icons.star,
      image: "assets/images/hoteles.jpg",
      ruta: MaterialPageRoute(builder: (context) => DetallesH()),
  );
}