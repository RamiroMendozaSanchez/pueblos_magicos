import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 290, right: 30.0 ),
      child: Container(
        width: 480.0,
        height: 80.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow( color: kShadowColor, offset: Offset(0, 4), blurRadius: 16)
            ]
        ),
        padding: EdgeInsets.only(top: 12.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Container(
                                  //width: 35.0,
                                  child: Column(
                                    children: [
                                      Text("Ene"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Feb"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Mar"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Abr"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  //width: 35.0,
                                  child: Column(
                                    children: [
                                      Text("May"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Jun"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Jul"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Ago"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  //width: 35.0,
                                  child: Column(
                                    children: [
                                      Text("Sep"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Oct"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Nov"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              FlatButton(
                                minWidth: 5.0,
                                onPressed: (){},
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text("Dic"),
                                      SizedBox(height: 10.0,),
                                      Icon(Icons.visibility, color: cIconsViewNotSelectedEventos)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


