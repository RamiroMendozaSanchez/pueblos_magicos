import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pueblos_magicos/components/encabezado.dart';
import 'package:pueblos_magicos/components/scroll_event.dart';
import 'package:pueblos_magicos/lists/event_list.dart';
import 'package:pueblos_magicos/resources/httpHandler.dart';
import '../resources/constants.dart';

class EventsScreen extends StatefulWidget {
  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadJson();
  }

  _loadJson() async{
    String data = await HttpHandler().fetchLugares();
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: cBackgroudApp,
      child: Column(
        children: [
          Stack(
            children: [
              encabezado(),
              Scroll()
            ],
          ),
          EventList()
        ],
      ),
    );
  }

}

Widget encabezado(){
  return Encabezado(
    color: cAppBarEventos,
    etiqueta1: "Eventos",
    lugar: "Anuales",
    descripcion: "Busca por mes los eventos y festividades que llevan a cabo sólo en Tlalpujahua",
    extra: "Selecciona un mes",
  );
}

