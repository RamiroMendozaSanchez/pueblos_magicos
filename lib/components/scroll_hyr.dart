import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class ScrollHyR extends StatelessWidget {
  final String img;
  const ScrollHyR({this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            width: 180,
            height: 180,
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
        ),
      ),
    );
  }
}
