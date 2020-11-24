import 'package:flutter/material.dart';
import 'package:pueblos_magicos/model/media.dart';
import 'package:pueblos_magicos/resources/httpHandler.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() => _MediaListState();
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadLugares();
  }
  
  void loadLugares() async{
    var lugar = await HttpHandler().fetchLugares();
    setState(() {
      _media.addAll(lugar);
    });
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, int index){
          return new Column(
            children: [
              new Image.network(_media[index].getPosterUrl())
            ],
          );
        },
      )
    );
  }
}
