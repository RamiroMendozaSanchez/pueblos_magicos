import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pueblos_magicos/resources/constants.dart';
import 'package:pueblos_magicos/resources/panel_slider_up.dart';

class SlidingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.2,
      maxChildSize: 0.6,
      builder: (context,controller){
        return Container(
          decoration: BoxDecoration(
            color: cBackgroudApp,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
          ),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Iglesia del Carmen",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
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
                                child: Row(
                                  children: [
                                    Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.1,
                                      height: MediaQuery.of(context).size.height *
                                          0.008,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                    Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.1,
                                      height: MediaQuery.of(context).size.height *
                                          0.008,
                                      decoration: BoxDecoration(
                                        color: Colors.amberAccent,
                                      ),
                                    ),
                                    Container(
                                      width:
                                      MediaQuery.of(context).size.width * 0.1,
                                      height: MediaQuery.of(context).size.height *
                                          0.008,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.05,
                              ),
                              Text(
                                "ALTA",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
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
                                          fontSize: 12,
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
                                          fontSize: 12,
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
                      SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
                                    "sed do eiusmod tempor incididunt ut labore et dolore"
                                    "magna aliqua."
                                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                                    "laboris nisi ut aliquip ex ea commodo consequat."
                                    "Duis aute irure dolor in reprehenderit in voluptate velit esse"
                                    "cillum dolore eu fugiat nulla pariatur."
                                    "Excepteur sint occaecat cupidatat non proident, sunt in"
                                    "culpa qui officia deserunt mollit anim id est laborum."
                                    "Sed ut perspiciatis unde omnis iste natus error sit"
                                    "voluptatem accusantium doloremque laudantium, totam"
                                    "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
                                    "quasi architecto beatae vitae dicta sunt explicabo."
                                    "Sed ut perspiciatis unde omnis iste natus error sit"
                                    "voluptatem accusantium doloremque laudantium, totam"
                                    "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
                                    "quasi architecto beatae vitae dicta sunt explicabo."
                                    "Sed ut perspiciatis unde omnis iste natus error sit"
                                    "voluptatem accusantium doloremque laudantium, totam"
                                    "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
                                    "quasi architecto beatae vitae dicta sunt explicabo."
                                ,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                  child: Image.asset("assets/images/lugares.jpg"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget panel() {
  return PanelSliding(
    name: "Iglesia del Carmen",
    descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
        "sed do eiusmod tempor incididunt ut labore et dolore"
        "magna aliqua."
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco"
        "laboris nisi ut aliquip ex ea commodo consequat."
        "Duis aute irure dolor in reprehenderit in voluptate velit esse"
        "cillum dolore eu fugiat nulla pariatur."
        "Excepteur sint occaecat cupidatat non proident, sunt in"
        "culpa qui officia deserunt mollit anim id est laborum."
        "Sed ut perspiciatis unde omnis iste natus error sit"
        "voluptatem accusantium doloremque laudantium, totam"
        "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
        "quasi architecto beatae vitae dicta sunt explicabo."
        "Sed ut perspiciatis unde omnis iste natus error sit"
        "voluptatem accusantium doloremque laudantium, totam"
        "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
        "quasi architecto beatae vitae dicta sunt explicabo."
        "Sed ut perspiciatis unde omnis iste natus error sit"
        "voluptatem accusantium doloremque laudantium, totam"
        "rem aperiam, eaque ipsa quae ab illo inventore veritatis et"
        "quasi architecto beatae vitae dicta sunt explicabo.",
    imagen: "assets/images/lugares.jpg",
  );
}
