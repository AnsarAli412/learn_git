


// import 'dart:convert';
//
// import 'package:http/http.dart'as http;
//
// import 'history_model_screen.dart';
//
// class HistoryApiServices {
//
//   Future<HistoryModel> getHistoryData(String query) async {
//     const String apiKey = '7c59607231fd4a65ba084531240806';
//     var url = Uri.parse(
//         'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$query');
//     var response = await http.get(url);
//     if (response.statusCode == 200) {
//       var decode = jsonDecode(response.body);
//       var data = HistoryModel.fromJson(decode);
//       return data;
//     }
//     else {
//       return HistoryModel();
//     }
//   }
//
// }
//


import 'dart:convert';
import 'package:http/http.dart' as http;

import 'history_model_screen.dart';

class HistoryApiServices {
  Future<HistoryModel> getHistoryData(String query, String historyDate) async {
    const String apiKey = '7c59607231fd4a65ba084531240806';
    var url = Uri.parse(
        'http://api.weatherapi.com/v1/history.json?key=$apiKey&q=$query&dt=$historyDate');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var decode = jsonDecode(response.body);
      var data = HistoryModel.fromJson(decode);
      return data;
    } else {
      return HistoryModel();
    }
  }
}



