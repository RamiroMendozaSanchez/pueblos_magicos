import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class InfoHyR extends StatelessWidget {
  final String nombre;
  final String lugar;
  final String tipo;
  final String tipo2;
  final String concurrencia;
  final Color color;

  const InfoHyR({this.nombre, this.lugar,this.tipo,this.tipo2,
    this.concurrencia, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(nombre, style: TextStyle(
                                  color: cTitlesAndText,
                                  fontSize: 30.0
                              ),),
                              SizedBox(width: 20,),
                              FloatingActionButton(
                                child: Icon(Icons.clear, color: Colors.white,),
                                onPressed: (){},
                                backgroundColor: color,
                                elevation: 50.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)
                                ),
                              )
                            ],
                          ),
                          Row(
                              children: [
                                Text(lugar, style: TextStyle(
                                    color: cTitlesAndText,
                                    fontSize: 20.0
                                ),),
                                SizedBox(width: 5.0,),
                                Icon(Icons.circle, color: color, size: 15,),
                                SizedBox(width: 5.0,),
                                Text(tipo, style: TextStyle(
                                    color: cTitlesAndText,
                                    fontSize: 20.0
                                ),),
                                SizedBox(width: 5.0,),
                                Icon(Icons.circle, color: color, size: 15,),
                                SizedBox(width: 5.0,),
                                Text(tipo2, style: TextStyle(
                                    color: cTitlesAndText,
                                    fontSize: 20.0
                                ),),
                              ],
                            ),
                          Row(
                              children: [
                                Text("Concurrencia", style: TextStyle(
                                    color: color,
                                    fontSize: 20.0
                                ),),
                                SizedBox(width: 15,),
                                Container(
                                  width: 25.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
                                    color: Color.fromRGBO(85, 239, 196, 1),
                                  ),
                                ),
                                Container(
                                  width: 25.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 234, 167, 1),
                                  ),
                                ),
                                Container(
                                  width: 25.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                                    color: Color.fromRGBO(255, 118, 117, 1),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Text(concurrencia, style: TextStyle(
                                    color: color,
                                    fontSize: 20.0
                                ),),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

