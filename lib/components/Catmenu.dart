import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class Catalago extends StatelessWidget {
  final String img;

  const Catalago({ this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
