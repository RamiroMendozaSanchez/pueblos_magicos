import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class HotelsScreen extends StatefulWidget {
  @override
  _HotelsScreenState createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Stack(
            children: [
              encabezado(),
            ],
          )
        ],
      ),
    );
  }

  Widget encabezado(){
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)
          ),
          color: cAssentInHoteles,
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: 400,
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                    right: 30.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Encuentra", style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0
                    ),),
                    Text("Hoteles", style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0
                    ),),
                    SizedBox(height: 10.0,),
                    Text("Estos son los más populares", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}