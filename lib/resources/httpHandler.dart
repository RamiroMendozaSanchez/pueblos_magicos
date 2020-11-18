import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pueblos_magicos/resources/constants.dart';

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

  Future<String> fetchLugares(){
    var uri = new Uri.https(_baseUrl, "entries?content_type=lugar", {
      'spaces': ID_SPACES,
      'environments': "master",
      'access_token': API_KEY
    });

    return getJson(uri).then(((data) => data.toString()));
  }


}


