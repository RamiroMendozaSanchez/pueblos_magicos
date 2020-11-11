import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class CardHR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Container(
            width: 240.0,
            height: 240.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(41.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 20),
                  blurRadius: 30.0
                )
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),

                )
              ],
            ),
          ) ,
        ),
      ],
    );
  }
}
