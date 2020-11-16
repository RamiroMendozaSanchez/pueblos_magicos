import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpHandler{
  static final _httphandler = new HttpHandler();
  final String _baseUrl = "https://cdn.contentful.com";

  static HttpHandler get(){
    return _httphandler;
  }

  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  Future <List<Media>> fetchLugares ({String category : 'lugar'})
}


