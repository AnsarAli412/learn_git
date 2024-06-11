import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_git/weather_app/time_zone_model_page.dart';
class WeatherService {
  Future<TimeZoneModel> searchTimeZoneData([String? data = "Bihar"]) async {
    var response = await http.get(Uri.parse(
        "http://api.weatherapi.com/v1/timezone.json ?Key=bdab88f9faed4e0290375245240906&q=$data"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return TimeZoneModel.fromJson(data);
    } else {
      return TimeZoneModel();
    }
  }
}
