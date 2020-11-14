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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.03,
              child: Row(
                children: [
                  Icon(Icons.location_on, color: color, size: 17.0,),
                  Text(ubicacion, style: TextStyle(fontSize: 16.0, color: cTitlesAndText),),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 3.0,
            decoration: BoxDecoration(
                color: Colors.grey.shade300
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.03,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height,
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: color, size: 15.0,),
                        Text(phone, style: TextStyle(fontSize: 15.0, color: cTitlesAndText),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Container(
                  width: 3.0,
                  height: 15.0,
                  decoration:  BoxDecoration(
                      color: Colors.grey.shade300
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height,
                    child: Row(
                      children: [
                        Icon(Icons.access_time, color: color, size: 15.0,),
                        Text("Abierto", style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(85, 239, 196, 1)),),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Icon(Icons.circle, color: color, size: 10.0,),
                        Text("Cierra: "+cierre, style: TextStyle(fontSize: 15.0, color: cTitlesAndText,)),
                      ],
                    )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 3.0,
            decoration: BoxDecoration(
                color: Colors.grey.shade300
            ),
          ),
        ],
      ),
    );
  }
}
