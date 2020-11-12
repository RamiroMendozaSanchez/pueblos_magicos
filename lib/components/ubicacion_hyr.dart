import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class UbicacionCardHyR extends StatelessWidget {
  final Color color;
  final String ubicacion;
  final String phone;
  final String cierre;

  const UbicacionCardHyR({this.color, this.ubicacion, this.phone, this.cierre});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: color, size: 17.0,),
                    Text(ubicacion, style: TextStyle(fontSize: 16.0, color: cTitlesAndText),),
                  ],
                ),
                SizedBox(height: 5.0,),
                Container(
                  width: 400.0,
                  height: 3.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone, color: color, size: 15.0,),
                        Text(phone, style: TextStyle(fontSize: 15.0, color: cTitlesAndText),),
                      ],
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      width: 3.0,
                      height: 15.0,
                      decoration:  BoxDecoration(
                          color: Colors.grey.shade300
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: color, size: 15.0,),
                        Text("Abierto", style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(85, 239, 196, 1)),),
                        SizedBox(width: 5.0,),
                        Icon(Icons.circle, color: color, size: 15.0,),
                        Text("Cierra: "+cierre, style: TextStyle(fontSize: 15.0, color: cTitlesAndText,)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5.0,),
                Container(
                  width: 400.0,
                  height: 3.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
