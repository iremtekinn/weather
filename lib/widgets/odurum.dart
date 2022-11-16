import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/models/current_weather_response.dart';
import 'package:weather_app/pages/pagetwo.dart';

class Odurum extends StatefulWidget {
  final CurrentWeatherResponse currentWeatherResponse;
  const Odurum({super.key, required this.currentWeatherResponse});

  @override
  State<Odurum> createState() => _OdurumState();
}

class _OdurumState extends State<Odurum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff4D7CF7),
         Color(0xff335FD1)]
         )
  ),
      width:374,
      height:193,
     child: GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Pagetwo())));
      },
       child: Stack(
        children: [
          Positioned(
            top:20,
            left:22,
            child: Text(widget.currentWeatherResponse.sys!.country.toString() +" 20 Desember 2021",style:TextStyle(color:Colors.white)),
            
            ),
            Positioned(
            top:20,
            right:22,
            child: Text("${DateTime.fromMillisecondsSinceEpoch(widget.currentWeatherResponse.dt!).hour}:${DateTime.fromMillisecondsSinceEpoch(widget.currentWeatherResponse.dt!).minute}",style:TextStyle(color:Colors.white))
            ),
            Positioned(
            top:55,
            //left:4,
            child: Image.asset("assets/sunandrun.png")
            ),
            Positioned(
            top:70,
            left:100,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.currentWeatherResponse.main!.temp!.toInt(). toString(),style:TextStyle(color:Colors.white, fontSize: 18)),
                Text(widget.currentWeatherResponse.weather![0].main .toString(),
                style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
     
              ],
            )
            ),
            Positioned(
            bottom:20,
            left:22,
            child: Row(
              children: [
              Text(widget.currentWeatherResponse.name.toString(),style:TextStyle(color:Colors.white,fontSize: 12)),
              Image.asset("assets/refreshocycle.png")
              ],
              )
            
            ),
        ]
        ),
     ),
     
    );
  }
}