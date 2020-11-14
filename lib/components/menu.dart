import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class Menu extends StatelessWidget {
  final String img;

  const Menu({ this.img});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41.0),
            boxShadow: [
              BoxShadow(
                  color: kShadowColor,
                  offset:  Offset(0, 20),
                  blurRadius: 30.0
              )
            ],
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}
