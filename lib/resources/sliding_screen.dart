import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/resources/constants.dart';
import 'package:pueblos_magicos/resources/panel_slider_up.dart';

class SlidingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: cBackgroudApp,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only( left: 20.0, right: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Row(
                      children: [
                        Text(
                          "Iglesia del Carmen",
                          style:
                              TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.grey.shade100.withOpacity(0.8),
                            width: 50,
                            height: 50,
                            child: FloatingActionButton(
                              backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NavigationBar(),
                                  ),
                                );
                              },
                              child: Container(
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "Concurrencia",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: cAssentHistory,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.height * 0.008,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.height * 0.008,
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.height * 0.008,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child:Text(
                            "ALTA",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cAssentRestorantsAndButtonVideo,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pinkAccent.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: RawMaterialButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.videocam,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Visualizar Vídeo",
                                  style: TextStyle(
                                    color: cBackgroudApp,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cAssentHistory,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.redAccent.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: RawMaterialButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.music_note_rounded,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Escuchar Historia",
                                  style: TextStyle(
                                    color: cBackgroudApp,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                              " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                              " It has survived not only five centuries, but also the leap into electronic typesetting,"
                              " remaining essentially unchanged. It was popularised in the 1960s with the release of "
                              "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing "
                              "software like Aldus PageMaker including versions of Lorem Ipsum."
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                              " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                              " It has survived not only five centuries, but also the leap into electronic typesetting,"
                              " remaining essentially unchanged. It was popularised in the 1960s with the release of "
                              "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing "
                              "software like Aldus PageMaker including versions of Lorem Ipsum."
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                              " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                              " It has survived not only five centuries, but also the leap into electronic typesetting,"
                              " remaining essentially unchanged. It was popularised in the 1960s with the release of "
                              "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing "
                              "software like Aldus PageMaker including versions of Lorem Ipsum.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            child: Image.asset("assets/images/lugares.jpg",),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      ],
                    ),
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
