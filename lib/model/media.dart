import 'package:pueblos_magicos/resources/util.dart';
class Media{
   int id;
   String name;
   String descripcion;
   String imagLugar;
   String videoLugar;
   String audioLugar;
   double long;
   double lat;

   String getPosterUrl() => getMediumPictureUrl(imagLugar);

   factory Media(Map jsonMap){
    return new Media.deserialize(jsonMap);
   }

   Media.deserialize(Map json):
         id = json["id"].toInt(),
         name = json["nombre"],
         descripcion = json["descripcin"],
         imagLugar= json["fotoLugar"],
         videoLugar = json["video"],
         audioLugar = json["audio"],
         long = json["longitud"].toDouble(),
         lat = json["latitud"].toDouble();

}