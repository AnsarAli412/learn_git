import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_git/astronomy/astronomy_model.dart';

class AstronomyApiService{

  var _BASE_URL = 'http://api.weatherapi.com/v1/';
  var _API_KEY = "139d92816b2c4eeea9194550240506";
  var astronomyEndPoint = "astronomy.json";


  Future<AstronomyModel>getAstronomyData(String query)async{
    var url = Uri.parse("$_BASE_URL$astronomyEndPoint?key=$_API_KEY&q=$query");
    var response = await http.get(url);
    if(response.statusCode == 200){
      var resData = jsonDecode(response.body);
      return AstronomyModel.fromJson(resData);
    }else{
      return AstronomyModel();
    }
  }

}