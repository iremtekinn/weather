import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/widgets/olistone.dart';
import 'package:weather_app/widgets/onetextone.dart';
import 'package:weather_app/widgets/tdurum.dart';
import 'package:weather_app/widgets/tgrid.dart';
import 'package:weather_app/widgets/tinformasi.dart';
import 'package:weather_app/widgets/tinformasi2.dart';
import 'package:weather_app/widgets/twotextone.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
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
  List<String>timgler=[
    "assets/t2.png",
    "assets/t3.png",
    "assets/t4.png",
    "assets/t5.png",
  ];
  List<String>tmetinler=[
    "86%",
    "940hPa",
    "1 km/h",
    "14%"
    
  ];
  List<String>tmetinler2=[
    "Kelembaban",
    "Tekanan Udara",
    "Kecepatan Angin",
    "Kabut"
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child:Column(
          children: [
            FadeIn(child: Tdurum(),duration: Duration(seconds: 5),),
            SizedBox(height:20),
            FadeIn(
              duration: Duration(seconds: 5),
              child: Padding(
                padding: EdgeInsets.only(left:10),
                child: Onetextone()
                ),
            ),
            SizedBox(height:10),
            FadeInRight(
              duration: Duration(seconds: 5),
              child: Container(
                  color:Color(0xffFBFBFB),
                  height:120,
                  child:ListView.builder(itemCount:hava.length,
                  scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                    return Olistone(imgUrl: hava[index], text1: text1[index], text2: text2[index]);
                  },
                  )
                ),
            ),
              SizedBox(height:10),
              FadeIn(duration: Duration(seconds: 5),child: Twotextone()),
              SizedBox(height:10),
              Bounce(child: Tinformasi2()),
              SizedBox(height:10),
               SlideInUp(
                 child: Container(
                   width:343,
                   height:154,
                  color:Colors.white,
                   child: GridView.builder(
                  
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: 5,
                     crossAxisSpacing: 5,
                     childAspectRatio: 7/2,
                     
                     ) ,
                   itemCount:timgler.length,
                   itemBuilder: ((context, index) {
                     return Tgrid(timg: timgler[index], tmetin: tmetinler[index], tmetin2: tmetinler2[index]);
                   }),
                   ),
                 ),
               )
              
          ],
        )
        
      ),
    );
  }
}