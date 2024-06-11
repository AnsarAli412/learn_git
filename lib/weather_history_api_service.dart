import 'dart:convert';

import 'package:learn_git/api_entpoint.dart';

import 'history_modal_class.dart';
import 'package:http/http.dart' as http;

class WeatherHistoryApiService{
  Future<HistoryModalClass> getWeatherHistory()async{
      var apiUrl = Uri.parse("$BASE_URL$historyEndPoint/$apiKey");
      var response = await http.get(apiUrl);
      if(response.statusCode==200){
        var weatherData = jsonDecode(response.body);
        var data = HistoryModalClass.fromJson(weatherData);
        return data;
      }else{
        return HistoryModalClass();
      }

  }
}