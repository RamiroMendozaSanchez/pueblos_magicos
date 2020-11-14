import 'package:flutter/material.dart';
import 'package:pueblos_magicos/resources/constants.dart';

class DescripcionHyR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Descripcion", style: TextStyle(fontSize: 25.0, color: cTitlesAndText),),
            SizedBox(height: 5.0,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                " It has survived not only five centuries, but also the leap into electronic typesetting,"
                " remaining essentially unchanged. It was popularised in the 1960s with the release of "
                "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing "
                "software like Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15.0, color: cTitlesAndText),)
          ],
        ),
      ),
    );
  }
}
