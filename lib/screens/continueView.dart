import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pueblos_magicos/navigator.dart';
import 'package:pueblos_magicos/resources/sliding_screen.dart';

class ContinueView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/lugares.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SlidingScreen(),

        ],
      ),
    );
  }
}
