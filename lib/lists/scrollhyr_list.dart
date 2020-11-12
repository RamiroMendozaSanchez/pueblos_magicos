import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/scroll_hyr.dart';

class ScrollHyRList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Container(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              scroll(),
              SizedBox(width: 15,),
              scroll(),
              SizedBox(width: 15,),
              scroll(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget scroll(){
  return ScrollHyR(
    img: "assets/images/hoteles.jpg",
  );
}



