import 'dart:convert';

 import 'package:http/http.dart'as http;
import 'package:learn_git/search_api_/search_model_api.dart';

class SearchApiClass{
  Future<List<SearchModel>?> getSearchdata(String search) async {
    const String apiKey = '1777929741cd47b798e84554240806';
    var url = Uri.parse(
        'http://api.weatherapi.com/v1/search.json?key=$apiKey&q=$search');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List decode = jsonDecode(response.body);
      var data = decode.map((e) => SearchModel.fromJson(e)).toList();
      return data;
    } else {
      return List<SearchModel>.empty();
    }
  }
}
