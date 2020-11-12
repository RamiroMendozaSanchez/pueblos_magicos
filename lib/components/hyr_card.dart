import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class CardHR extends StatelessWidget {
  const CardHR({this.img, this.nombre, this.catpre, this.iconos, this.ruta});
  // ignore: empty_constructor_bodies
  final String img;
  final String nombre;
  final String catpre;
  final IconData iconos;
  final MaterialPageRoute ruta;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41.0),
                  boxShadow: [
                    BoxShadow(
                      color: kShadowColor,
                      offset:  Offset(0, 20),
                      blurRadius: 30.0
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  )
                ),
                child: Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 32.0, top: 100.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(nombre, style: TextStyle(color: cBackgroudApp, fontSize: 25.0,  fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Text(catpre, style: TextStyle(color: cBackgroudApp, fontSize: 15.0),),
                                    SizedBox(width: 10,),
                                    Icon(iconos, size: 15.0,),
                                  ],
                                ),
                                FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context, ruta
                                    );
                                  },
                                  color: Colors.grey.shade500.withOpacity(0.3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)
                                  ),
                                  minWidth: 10,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Conoce más", style: TextStyle(color: Colors.white, fontSize: 10),),
                                        SizedBox(height: 10.0,),
                                        Icon(Icons.navigate_next, color: Colors.white, size: 10,)
                                      ],
                                    ),
                                  ),
                              ],
                            )
                          )
                        ],
                      ),
                    ),
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
