
import 'dart:convert';
import'dart:developer';
import 'package:http/http.dart' as http;

import 'package:weather_app/models/current_weather_response.dart';

Future<CurrentWeatherResponse?>getCurrentData(context)async{
  CurrentWeatherResponse weatherResponse;
  try{
    final response =await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=41.0327&lon=29.0319&appid=d98d3a79d3c8761669dae0e2038071ca&units=metric"));
      weatherResponse= 
      CurrentWeatherResponse.fromJson(jsonDecode(response.body));
  //  ));
    return weatherResponse;
  }catch(e){
    log(e.toString());
  }

}