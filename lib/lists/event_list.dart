import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/event_card.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      //height: 320.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(index == 0 ? 15.0 : 0.0),
                child: EventCard(),
              ),
            ],
          );
        },
      ),
    );
  }
}
