import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/Catmenu.dart';

class Catalogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Container(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              scroll(),
              SizedBox(width: 15,),
              scroll(),
              SizedBox(width: 15,),
              scroll(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget scroll(){
  return Catalago(
    img: "assets/images/habitacion.jpg",
  );
}

