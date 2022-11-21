import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/current_weather_response.dart';

import '../provider/forecasting_provider.dart';

class Tdurum extends StatefulWidget {
   final CurrentWeatherResponse currentWeatherResponse;
  const Tdurum({super.key, required this.currentWeatherResponse});

  @override
  State<Tdurum> createState() => _TdurumState();
}

class _TdurumState extends State<Tdurum> {
 
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder:(context,ForecastingProvider value,child){
        return value.isLoading?CircularProgressIndicator():
            Container(
        width:double.infinity,
        height:370,
        decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff4FC7FA),
           Color(0xff3764D7),
           Color(0xff335FD1)]
           )
        ),
        child:Stack(
          children: [
            Positioned(
              top:80,
              left:20,
              child: Row(
                children: [ 
                  GestureDetector(
                    onTap:(() => Navigator.pop(context)),
                    child: Icon(Icons.chevron_left,color:Colors.white)),
                  SizedBox(width:80),
                  Text(widget.currentWeatherResponse.sys!.country.toString(),style: TextStyle(color:Colors.white),),
                  SizedBox(width:80),
                  Image.asset("assets/nokta.png")
                ],
              )
              
              ),
              Positioned(
                top:124,
                left:83,
                child: Column(
                  children: [
                    Text(widget.currentWeatherResponse.name.toString()+"   ${value.response.list![value.currentIndex].dtTxt.toString().split(" ").last.toString().substring(0,5).toString()}"+"     ${value.response.list![value.currentIndex].dtTxt.toString().split(" ").first.toString().substring(0,10).toString()}",style: TextStyle(color:Colors.white),),
                    SizedBox(height:20),
                    Image.network("http://openweathermap.org/img/wn/${value.response.list![value.currentIndex].weather?.first.icon ?? "10d"}@2x.png"),
                    //SizedBox(height:10),
                   // Text(widget.currentWeatherResponse.main!.temp!.toInt(). toString(),style: TextStyle(color:Colors.white,fontSize:17),), 
                   Text("${value.response.list![value.currentIndex].main!.temp.toInt().toString()}",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:17)), 
                    //yukardaki kod satırı sayesinde pageonedaki kartta yazan hava sıcaklığı ile pagetwo daki kartta yazan sıcaklık birbirine eşitlendi
                    SizedBox(height:10),
                    Text("${value.response.list![value.currentIndex].weather![0].description!}",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:17)),
                    SizedBox(height:10),
                    Row(
                      children: [
                        Text(widget.currentWeatherResponse.name.toString(),style:TextStyle(color:Colors.white,fontSize: 14)),
                        Image.asset("assets/refreshocycle.png")
                      ],
                    )
    
                  ],
                )
                )
          ],
        )
      );
      }
  
    );
  }
}