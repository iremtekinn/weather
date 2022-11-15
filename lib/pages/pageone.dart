import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
//import 'package:showcaseview/showcaseview.dart';
import 'package:weather_app/widgets/appbarone.dart';
import 'package:weather_app/widgets/odurum.dart';
import 'package:weather_app/widgets/olistone.dart';
import 'package:weather_app/widgets/olisttwo.dart';
import 'package:weather_app/widgets/onetextone.dart';
import 'package:weather_app/widgets/opinkk.dart';
import 'package:weather_app/widgets/otexttwo.dart';

import '../provider/weather_provider.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {

  WeatherProvider ?wetProvider;
  void initState(){
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => ShowCaseWidget.of(context).startShowCase(
      [
        _key1,
        _key2,
        
        
      ],
    ),
  );
   
     wetProvider=Provider.of<WeatherProvider>(context,listen:false);
    wetProvider!.getWeatherData(context);
  }
  List<String>hava=[
     "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
      "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
      "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
      "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
      "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
      "assets/o1.png",
     "assets/o2.png",
     "assets/o3.png",
     "assets/o2.png",
  ];
  List<String>text1=[
     "20",
     "20", 
     "19",
     "19",
     "20",
     "20", 
     "19",
     "19",
     "20",
     "20", 
     "19",
     "19",
     "20",
     "20", 
     "19",
     "19",
     "20",
     "20", 
     "19",
     "19",
     "20",
     "20", 
     "19",
     "19",
  ];
  List<String>text2=[
    "00.00 AM",
    "1.00 AM",
    "2.00 AM",
    "3.00 AM",
    "4.00 AM",
    "5.00 AM",
    "6.00 AM",
    "7.00 AM",
    "8.00 AM",
    "9.00 AM",
    "10.00 AM",
    "11.00 AM",
    "12.00 PM",
    "1.00 AM",
    "2.00 PM",
    "3.00 PM",
    "4.00 PM",
    "5.00 PM",
    "6.00 PM",
    "7.00 PM",
    "8.00 PM",
    "9.00 PM",
    "10.00 PM",
    "11.00 PM"
    
  ];
  List<String>ohavalar=[
    "assets/o4.png",
    "assets/o5.png",
    "assets/o6.png",
  ];
  List<String>osehirler=[
    "Selasa",
    "Rabu",
    "Kamis",
  ];
  List<String>osehir2ler=[
    "Hujan petir",
    "Hujan deras",
    "Hujan deras"
  ];
  List<String>odereceler=[
    "19",
    "17",
    "17"
  ];

  final _key1=GlobalKey();
  final _key2=GlobalKey();


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:
      //Consumer(
      //  builder: (context,WeatherProvider aa, child)=>aa.isLoading==true
      // ?CircularProgressIndicator()
       // :
        SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right:10, left:10),
          child:Column(
            children: [
              BounceInLeft(
                child: Appbarone(),
                duration: Duration(seconds:5),
                ),
              SizedBox(height: 20,),
              Consumer(
                builder: (context, WeatherProvider aa, child) => aa.isLoading==true
                ?CircularProgressIndicator()
                :
                Showcase(
                  key: _key1,
                  description: 'You can check the weather in here',
                  child: Odurum(currentWeatherResponse: wetProvider!.response,)
                  ),
                
              ),
              SizedBox(height:10),
              // BounceInLeft(
              //   child: Onetextone(),
              //   duration:Duration(seconds:5)
              // ),
              Consumer(
                builder: (context, WeatherProvider aa, child) => aa.isLoading==true
                ?CircularProgressIndicator()
                :
                 Container(
                    width:double.infinity,
                    height:25,
                    color:Color(0xffFBFBFB),
                    child:Text(aa.response.name.toString(),style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16))
                  ),
              ),
              SizedBox(height:10),
              BounceInRight(
                duration: Duration(seconds:5),
                child: Showcase(
                  key: _key2,
                  description: 'You can check 24 hour weather for a one day',
                  child: Container(
                    color:Color(0xffFBFBFB),
                    height:120,
                    child:ListView.builder(itemCount:hava.length,
                    scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                      return Olistone(imgUrl: hava[index], text1: text1[index], text2: text2[index],);
                    },
                    )
                    
                  ),
                ),
              ),
              SizedBox(height:10),
              BounceInLeft(
                duration: Duration(seconds: 5),
                child: Otexttwo()
                ),
              SizedBox(height:10),
              BounceInRight(
                duration: Duration(seconds: 5),
                child: Opinkk()
                ),
              SizedBox(height:10),
              Bounce(
                child: Container(
                  color:Color(0xffFBFBFB),
                  height:200,
                  child:ListView.builder(itemCount:ohavalar.length,
                  scrollDirection: Axis.vertical, itemBuilder: (context, index) {
                    return Olisttwo(ohava: ohavalar[index], osehir: osehirler[index], osehir2: osehir2ler[index], oderece: odereceler[index]);
                  },)
                ),
              )
            ],
          )
          ),
      )
       // )
    );
  }
}