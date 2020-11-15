import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class EventCard extends StatelessWidget {

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
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(180, 222 , 246, .6),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(130, 200, 241, .75),
                      offset: Offset(0, 20),
                      blurRadius: 30.0,
                    )
                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width ,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dia de la raza",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                              color: Color.fromRGBO(0, 117, 182, 1),
                              decoration: TextDecoration.none)
                      ),
                      SizedBox(height: 4.0,),
                      Row(
                        children: [
                          Icon(Icons.group, color: cAppBarEventos,),
                          Text("Ayuntamiento municipal", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: cSubtitles,
                              decoration: TextDecoration.none
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_today, color: cAppBarEventos),
                          Text("De 1 al 13 de febrero", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: cSubtitles,
                              decoration: TextDecoration.none
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.near_me, color: cAppBarEventos),
                          Text("Plaza rayon", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: cSubtitles,
                              decoration: TextDecoration.none
                          ),)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        child: Padding(
                          padding: EdgeInsets.only(left:30.0),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text(
                              "Agregar a mi calendario",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 11.0, color: cBackgroudApp),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: cAppBarEventos,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

