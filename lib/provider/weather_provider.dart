import 'package:flutter/material.dart';
import 'package:weather_app/models/current_weather_response.dart';

import '../services/apiservices.dart';

class WeatherProvider with ChangeNotifier{
  CurrentWeatherResponse response =CurrentWeatherResponse();
  bool isLoading = false;

  getWeatherData(context)async{
    isLoading=true;
    response=(await getCurrentData(context))!;
    print(response.name);
    isLoading= false;
    notifyListeners();
  }
}