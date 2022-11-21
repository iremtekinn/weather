
import 'dart:convert';
import'dart:developer';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:weather_app/models/current_weather_response.dart';


import 'package:weather_app/models/weather_forecast_response.dart';
import 'package:weather_app/services/logging.dart';


Future<CurrentWeatherResponse?>getCurrentData(context)async{
  CurrentWeatherResponse weatherResponse;
  try{
    //http ile veri çektik
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
// Future<WeatherForecastResponse?>getCurrentData2() async{
//   WeatherForecastResponse forecastingResponse;
//   try{
//     //dio ile veri çektik
//     // final response=await http.get(Uri.parse(
//     //   "https://api.openweathermap.org/data/2.5/forecast?lat=41.029098&lon=29.017084&appid=d98d3a79d3c8761669dae0e2038071ca&units=metric"));
//    // final response =await Dio().get("https://api.openweathermap.org/data/2.5/forecast?lat=41.029098&lon=29.017084&appid=d98d3a79d3c8761669dae0e2038071ca&units=metric"),
//      final response = await Dio().get('https://api.openweathermap.org/data/2.5/forecast', queryParameters: {'lat': 41.029098, 'lon': 29.017084,'appid':'d98d3a79d3c8761669dae0e2038071ca','units':'metric'});
//       forecastingResponse=WeatherForecastResponse.fromJson((response.data));
//       print(forecastingResponse.city!.country);
//       return forecastingResponse;
    
//   }
//   catch(e){
//     log(e.toString());
//   }
//   }
final Dio _dio=Dio(BaseOptions(
  baseUrl:"https://api.openweathermap.org/data/2.5/",
  connectTimeout:5000,
  receiveTimeout:3000))
  ..interceptors.add(Logging());
  Future<WeatherForecastResponse?>getCurrentData2()async{
    WeatherForecastResponse forecastingResponse;
    try{
      final response =await _dio.get("forecast?lat=41.029098&lon=29.017084&appid=d98d3a79d3c8761669dae0e2038071ca&units=metric");
      forecastingResponse=WeatherForecastResponse.fromJson(response.data);
      print(forecastingResponse.city!.sunrise);
      switch(response.statusCode){
        case 200: 
        {
          Fluttertoast.showToast(msg: " 200, The request suceed");
        }
        break;
        case 404:
        {
          Fluttertoast.showToast(
              msg:
                  "The HTTP 404 Not Found response status code indicates that the server cannot find the requested resource.");
        }
        break;
        case 500:
        {
          Fluttertoast.showToast(
              msg:
                  "500, The server has encountered a situation it does not know how to handle.");
        }
        break;
        default:
        {}
      }
      return forecastingResponse;
    }
    catch(e){
      log(e.toString());
    }
     return null;
  }

