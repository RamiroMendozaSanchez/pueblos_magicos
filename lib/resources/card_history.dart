import 'dart:ui';

import 'package:flutter/material.dart';

import 'constants.dart';

class CardHistory extends StatelessWidget {
  final String imagen;
  final String name;
  final String description;

  const CardHistory({this.imagen, this.name, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagen,
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey.shade500.withOpacity(0.3),
              ),
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Text(" "),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
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
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 12,),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 24,
                    width: 114,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: cAssentHistory,
                    ),
                    child: RawMaterialButton(
                      child: Text(
                        "Más Información",
                        style: TextStyle(
                          color: cBackgroudApp,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {},
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

