

import 'dart:convert';


import 'package:http/http.dart'as http;

import 'future_modal.dart';


class WeatherApiClass {

  Future<FutureModal> getFutureData(String future) async {
    const String apiKey = '7c59607231fd4a65ba084531240806';
    var url = Uri.parse(
        'http://api.weatherapi.com/v1/future.json?key=$apiKey&q=$future');
    var respons = await http.get(url);
    if (respons.statusCode == 200) {
      var decode = jsonDecode(respons.body);
      var data = FutureModal.fromJson(decode);
      return data;
    }
    else {
      return FutureModal();
    }

}}