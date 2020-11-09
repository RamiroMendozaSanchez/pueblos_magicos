import 'dart:ui';
import 'package:flutter/material.dart';

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
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/lugares.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.grey.shade500.withOpacity(0.3),
                    ),
                    child: Container(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Text(" "),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Iglesia del Carmen",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur "
                          "adipiscing elit, sed do eiusmod tempor"
                          "incididunt ut labore et dolore magna aliqua",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/trabajo.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
