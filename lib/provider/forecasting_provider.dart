import 'package:flutter/cupertino.dart';


import 'package:weather_app/models/weather_forecast_response.dart';
import 'package:weather_app/services/apiservices.dart';



class ForecastingProvider with ChangeNotifier{
  WeatherForecastResponse response= WeatherForecastResponse();
  bool isLoading=false;

  getForecastingData(context) async {
    isLoading=true;
    response=(await getCurrentData2())!;
    //print(response.name);
    isLoading=false;
    notifyListeners();
  }

}