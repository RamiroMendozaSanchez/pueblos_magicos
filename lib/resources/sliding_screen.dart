import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/resources/constants.dart';
import 'package:pueblos_magicos/resources/panel_slider_up.dart';

class SlidingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: cBackgroudApp,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    Text(
                      "Iglesia del Carmen",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: Container(
                            color: Colors.grey.shade100.withOpacity(0.8),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
