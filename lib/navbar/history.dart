import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/card_history.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class HistoryScrren extends StatefulWidget {
  @override
  _HistoryScrrenState createState() => _HistoryScrrenState();
}

class _HistoryScrrenState extends State<HistoryScrren> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xFFf9f9fc),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lugares Históricos",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Conoce más sobre Tlalpujahua",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              _card1(),
              SizedBox(
                height: 30,
              ),
              _card2(),
              SizedBox(
                height: 30,
              ),
              _card3(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _card1() {
  return CardHistory(
    imagen: "assets/images/lugares.jpg",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
        " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
        "Ut enim ad minim veniam, quis nostrud",
    name: "Templo del Carmen",
  );
}

Widget _card2() {
  return CardHistory(
    imagen: "assets/images/lugares.jpg",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
        " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
        "Ut enim ad minim veniam, quis nostrud",
    name: "Templo del Carmen",
  );
}

Widget _card3() {
  return CardHistory(
    imagen: "assets/images/lugares.jpg",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
        " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
        "Ut enim ad minim veniam, quis nostrud",
    name: "Templo del Carmen",
  );
}
