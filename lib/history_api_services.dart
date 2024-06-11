



import 'dart:convert';

import 'history_model_screen.dart';

 import 'package:http/http.dart'as http;

class HistoryApiServices {

  Future<HistoryModel> getHistoryData(String history) async {
    const String apiKey = '7c59607231fd4a65ba084531240806';
    var url = Uri.parse(
        'http://api.weatherapi.com/v1/history.json?key=$apiKey&q=$history');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      var data = HistoryModel.fromJson(decode);
      print(response.body);
      return data;
    }
    else {
      return HistoryModel();
    }
  }


}



