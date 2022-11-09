import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/widgets/appbarone.dart';
import 'package:weather_app/widgets/odurum.dart';
import 'package:weather_app/widgets/olistone.dart';
import 'package:weather_app/widgets/onetextone.dart';
import 'package:weather_app/widgets/opinkk.dart';
import 'package:weather_app/widgets/otexttwo.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right:10, left:10),
          child:Column(
            children: [
              Appbarone(),
              SizedBox(height: 20,),
              Odurum(),
              SizedBox(height:10),
              Onetextone(),
              SizedBox(height:10),
              Container(
                color:Colors.green,
                height:120,
                child:ListView.builder(itemCount:hava.length,
                scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                  return Olistone(imgUrl: hava[index], text1: text1[index], text2: text2[index],);
                },
                )
              ),
              SizedBox(height:10),
              Otexttwo(),
              SizedBox(height:10),
              Opinkk()
            ],
          )
          ),
      )
    );
  }
}