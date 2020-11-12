import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/detallesr.dart';
import 'package:pueblos_magicos/components/encabezado.dart';
import 'package:pueblos_magicos/components/hyr_card.dart';
import 'package:pueblos_magicos/components/thyr_Card.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class RestaurantsScreen extends StatefulWidget {
  @override
  _RestaurantsScreenState createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
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
            SizedBox(height: 10.0,),
            Text("Restaurantes ", style: TextStyle(fontSize: 30.0, color: cTitlesAndText),),
            scrollTodo(),
            Text("Cafeterias ", style: TextStyle(fontSize: 30.0, color: cTitlesAndText),),
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
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                tcard1(),
                SizedBox(width: 15,),
                tcard2(),
                SizedBox(width: 15,),
                tcard3(),
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
    color: cAssentRestorantsAndButtonVideo,
    etiqueta1: "Encuentra",
    lugar: "Restaurantes",
    descripcion: "Estos son los más populares",
    extra: "",
  );
}

Widget card1(){
  return CardHR(
    img: "assets/images/restaurant.jpg",
    nombre: "La terraza",
    catpre: "Restaurantes y bares",
    iconos: null,
    ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}

Widget card2(){
  return CardHR(
    img: "assets/images/restaurant.jpg",
    nombre: "La terraza",
    catpre: "Restaurantes y bares",
    iconos: null,
    ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}

Widget card3(){
  return CardHR(
    img: "assets/images/restaurant.jpg",
    nombre: "La terraza",
    catpre: "Restaurantes y bares",
    iconos: null,
    ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}

Widget tcard1(){
  return TCardsHyR(
      color: cAssentRestorantsAndButtonVideo,
      nombre: "La terraza",
      catpre: "Comida mexicana, café, comida local",
      icon: null,
      image: "assets/images/restaurant.jpg",
      ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}

Widget tcard2(){
  return TCardsHyR(
      color: cAssentRestorantsAndButtonVideo,
      nombre: "La terraza",
      catpre: "Comida mexicana, café, comida local",
      icon: null,
      image: "assets/images/restaurant.jpg",
      ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}

Widget tcard3(){
  return TCardsHyR(
      color: cAssentRestorantsAndButtonVideo,
      nombre: "La terraza",
      catpre: "Comida mexicana, café, comida local",
      icon: null,
      image: "assets/images/restaurant.jpg",
      ruta: MaterialPageRoute(builder: (context) => DetallesR()),
  );
}