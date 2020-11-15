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
            borderRadius: BorderRadius.circular(30),
            child: Padding(
              padding: EdgeInsets.only(top: 210.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.grey.shade500.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 230.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nombre,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    catpre,
                    style: TextStyle(color: Colors.white, fontSize: 12,),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 24,
                    width: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade500.withOpacity(0.5),
                    ),
                    child: Row(
                      children: [
                        RawMaterialButton(
                          child: Text(
                            "Conoce más",
                            style: TextStyle(
                              color: cBackgroudApp,
                              fontSize: 12,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              ruta
                            );
                          },
                        ),
                        Icon(Icons.arrow_forward_ios, size: 10, color: cBackgroudApp,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
