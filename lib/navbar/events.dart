import 'package:flutter/material.dart';
import '../resources/constants.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)
                    ),
                    color: cAppBarEventos,
                  ),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: 650,
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
                              Text("Eventos", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0
                              ),),
                              Text("Anuales", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0
                              ),),
                              SizedBox(height: 10.0,),
                              Text("Busca por mes los eventos y festividades que se llevan a cabo sólo en Tlalpujahua", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0
                              ),),
                              SizedBox(height: 30.0,),
                              Text("Selecciona un mes", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0
                              ),)
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 310, right: 30.0 ),
                child: Container(
                  width: 450.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow( color: kShadowColor, offset: Offset(0, 4), blurRadius: 16)
                      ]
                  ),
                  padding: EdgeInsets.all(12.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}
