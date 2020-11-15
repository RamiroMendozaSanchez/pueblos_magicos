import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class TCardsHyR extends StatelessWidget {
  final Color color;
  final String nombre;
  final String catpre;
  final IconData icon;
  final String image;
  final MaterialPageRoute ruta;

  const TCardsHyR({this.color, this.nombre, this.catpre, this.icon, this.image, this.ruta});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: color,
              boxShadow: [
                BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 40),
                    blurRadius: 30.0
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 160.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                    context, ruta
                  );
                },
                color: Colors.grey.shade500.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0), bottomRight: Radius.circular(30.0))
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
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 125, left: 3 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nombre, style: TextStyle(color: cTitlesAndText, fontWeight: FontWeight.bold, fontSize: 15.0),),
                  Container(
                    width: MediaQuery.of(context).size.width ,
                    child: Row(
                      children: [
                        Text(catpre, style: TextStyle(color: cTitlesAndText, fontSize: 9.0),),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.005,),
                        Icon(icon, size: 10.0,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(image)
              )
            ),
          )
        ],
      ),
    );
  }
}
