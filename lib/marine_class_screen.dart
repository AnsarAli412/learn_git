import 'dart:convert';
import 'package:http/http.dart'as http;
import 'marine_model_screen.dart';

class MarineApiClass {

  Future<MarineModal> getMarineVeiw(String city) async {
    const String apiKey = '7c59607231fd4a65ba084531240806';
    var url = Uri.parse('http://api.weatherapi.com/v1/marine.json?key=$apiKey&q=$city');
    var respons = await http.get(url);
    if (respons.statusCode == 200){
      var decode = jsonDecode(respons.body);
      var data = MarineModal.fromJson(decode);
      return data;
    }
    else {
      return MarineModal();
    }
  }
}