import 'package:flutter/material.dart';

class BotonLlegada extends StatelessWidget {
  final Color color;
  const BotonLlegada({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: FlatButton(
        onPressed: (){},
        child: Row(
          children: [
            Icon(Icons.location_on, size: 20, color: Colors.white,),
            Text(
              "Ver direccion de llegada",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        color: color,
      ),
    );
  }
}
