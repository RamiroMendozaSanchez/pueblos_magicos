import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pueblos_magicos/resources/constants.dart';

class HttpHandler{

  static final _httphandler = new HttpHandler();
  final String _baseUrl = "cdn.contentful.com";

  static HttpHandler get(){
    return _httphandler;
  }

  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  Future<dynamic> fetchLugares() {
    var uri = new Uri.https(
      _baseUrl,
      '/spaces/4mn7wrc3ysbs/entries',
      {'access_token': ACCESS_TOKEN,'content_type': 'lugar','select':'fields.nombre,fields.descripcin,fields.fotoLugar,fields.video,fields.audio,fields.locacion'},
    );
    print(uri);
    return getJson(uri).then(((data) => data.toString()));
  }


}


