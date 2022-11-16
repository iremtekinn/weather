
import 'dart:convert';
import'dart:developer';
import 'package:http/http.dart' as http;

import 'package:weather_app/models/current_weather_response.dart';


import 'package:weather_app/models/weather_forecast_response.dart';


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
Future<WeatherForecastResponse?>getCurrentData2() async{
  WeatherForecastResponse forecastingResponse;
  try{
    final response=await http.get(Uri.parse(
      "https://api.openweathermap.org/data/2.5/forecast?lat=41.029098&lon=29.017084&appid=d98d3a79d3c8761669dae0e2038071ca&units=metric"));
      forecastingResponse=WeatherForecastResponse.fromJson(jsonDecode(response.body));
      return forecastingResponse;
    
  }
  catch(e){
    log(e.toString());
  }
  }