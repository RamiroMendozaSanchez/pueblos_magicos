import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/screens/third_screen.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/principal.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          color: Colors.grey.shade500.withOpacity(0.3),
                          child: FloatingActionButton(
                            heroTag: "btnBack",
                            backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          color: Colors.grey.shade500.withOpacity(0.3),
                          child: FloatingActionButton(
                            heroTag: 'btnNext',
                            backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ThirdScreen()),
                              );
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ssssssssssssssssssssssssssssssssfhssssssssssssss  "
                            "sdhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh "
                            "sdhggggggggggggggggggggggggggggggggggggggggggj"
                            "sdjfkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
                            "sdhfffffffffffffffffffffffffffffffffffffffffffffgfdj"
                            "sdfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhj"
                            "fshddddddddddddddddddddddddddddddddddddddddddddddddddd",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                      child: Container(
                        color: Colors.grey.shade500.withOpacity(0.3),
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: RawMaterialButton(
                          child: Center(
                            child: FractionallySizedBox(
                              widthFactor: 0.48,
                              child: Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Ver lugares históricos",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NavigationBar()),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}