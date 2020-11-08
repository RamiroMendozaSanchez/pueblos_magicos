import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pueblos_magicos/navbar/events.dart';
import 'package:pueblos_magicos/navbar/restaurants.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
              child: Align(
                alignment: Alignment.centerRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.grey.shade500.withOpacity(0.3),
                      child: FloatingActionButton(
                        backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondScreen()),
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
            ),
            Container(
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/tlalpujahua.png',
                          width: MediaQuery.of(context).size.width * 0.75,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "El pueblo que se negó a morir",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.place,
                              color: Colors.white,
                            ),
                            Text(
                              "Michoacán, México",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                              ),
                            ),
                          ],
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
