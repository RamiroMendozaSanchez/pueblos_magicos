import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  final Color color;
  final String etiqueta1;
  final String lugar;
  final String descripcion;
  final String extra;

  const Encabezado({this.color, this.etiqueta1, this.lugar, this.descripcion, this.extra});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)
          ),
          color: color,
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height * 0.45,
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: 40.0,
                    left: 10.0,
                    right: 10.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(etiqueta1, style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0
                    ),),
                    Text(lugar, style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0
                    ),),
                    SizedBox(height: 10.0,),
                    Text(descripcion, style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                    SizedBox(height: 10.0,),
                    Text(extra, style: TextStyle(
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
