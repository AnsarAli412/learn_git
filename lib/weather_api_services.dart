import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_git/weather_astronomy_model.dart';

class AstronomyApi {
  Future<AstronomyModel> getData(String name) async {
      var baseurl = "http://api.weatherapi.com/v1";
     String apikey = "?key=bade5870effc4c4c84b22717241106";
    var response = await http.get(Uri.parse("$baseurl/astronomy.json $apikey&q=$name"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var getdata = AstronomyModel.fromJson(data);
      return getdata;
    } else {
      return AstronomyModel();
    }
  }
}
