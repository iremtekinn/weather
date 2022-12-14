import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/current_weather_response.dart';
import 'package:weather_app/pages/pagetwo.dart';
import 'package:weather_app/provider/forecasting_provider.dart';

class Odurum extends StatefulWidget {
  final CurrentWeatherResponse currentWeatherResponse;
  
  const Odurum({super.key, required this.currentWeatherResponse});

  @override
  State<Odurum> createState() => _OdurumState();
}

class _OdurumState extends State<Odurum> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder:(context,ForecastingProvider value,child){
      return value.isLoading?CircularProgressIndicator():
      Container(
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
              child: Text(widget.currentWeatherResponse.sys!.country.toString() +" ${value.response.list![value.currentIndex].dtTxt.toString().split(" ").first.toString().substring(0,10).toString()}",style:TextStyle(color:Colors.white)),
              
              ),
              Positioned(
              top:20,
              right:22,
              //child: Text("${DateTime.fromMillisecondsSinceEpoch(widget.currentWeatherResponse.dt!).hour}:${DateTime.fromMillisecondsSinceEpoch(widget.currentWeatherResponse.dt!).minute}",style:TextStyle(color:Colors.white))
              child:Text("${value.response.list![value.currentIndex].dtTxt.toString().split(" ").last.toString().substring(0,5).toString()}",style: TextStyle(color: Colors.white),)
              ),
              Positioned(
              top:55,
              //left:4,
              
              //child: Image.asset("assets/sunandrun.png") kendi asset dosyamdan odurum kart??na ald??????m foto
              child: Image.network("http://openweathermap.org/img/wn/${value.response.list![value.currentIndex].weather?.first.icon ?? "10d"}@2x.png"),//apiden odurum kart??na ald??????m veri
              //yani listviewdeki indexe t??klad??????mda indexdeki hava durmuna ait iconu ??ekiyor ancak indexin resimleri hen??z de??i??medi
              ),
              Positioned(
              top:70,
              left:100,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.currentWeatherResponse.main!.temp!.toInt(). toString(),style:TextStyle(color:Colors.white, fontSize: 18)),
                 // Text(widget.currentWeatherResponse.weather![0].main .toString(), 
                  //style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18)), a??a????daki listviewe t??klamadan sadece kart ??zerinde apiden ald??????m??z ayn?? veriyi
                  //yazd??r??ryor ??rne??in clouds kartta hep clouds yaz??yor  ancak a??a????daki kod sat??r?? pageone da bulunan listviewdeki her indexe t??kland??????nda o indexe ait hava 
                  //durumunu yazd??r??yor.
                  Text("${value.response.list![value.currentIndex].weather![0].description!}",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 18))
                 

       
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
      
    );
  }
}