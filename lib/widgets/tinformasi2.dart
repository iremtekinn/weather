import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tinformasi2 extends StatefulWidget {
  const Tinformasi2({super.key});

  @override
  State<Tinformasi2> createState() => _Tinformasi2State();
}

class _Tinformasi2State extends State<Tinformasi2> {
  @override
  Widget build(BuildContext context) {
     return Container(
      color: Color(0xffFAFAFA),
      padding: EdgeInsets.only(left: 20),
      height:80,
      child:Row(
        children: [
          Stack(
            children: [
             Container(
              width:80,
              height:80,
             // color:Colors.pink
             ),
             Positioned(
              left:5,top:5,
              child: Container(
                width: 70,
                height:70,
                //color:Colors.yellow,
              )
              ),
              Positioned(
                left:32,top:28,
                child: Text("12")
                ),
                Padding(
                  
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height:68,
                      width: 68,
                      //color:Colors.blue,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey.withOpacity(.5),
                        color:Colors.green,
                        value:.12,
                        strokeWidth: 7,
                      ),
                    ),
                  ),
                )
            ],
          ),
          SizedBox(width:5),
          Container(
            width:280,
            height:80,
            color:Color(0xffFAFAFA),
            child: Padding(
              padding: EdgeInsets.only(left:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("AQI-Sangat Baik",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
                  SizedBox(height:8),
                  Text("Kualitas udara di daerahmu untuk saat ini",style: TextStyle(color: Color(0xff494343)),),
                  Text("sangat baik. Tıdak ada pencemaran udara",style: TextStyle(color: Color(0xff494343)),),
                  Text("yang menyebabkan berbagai penyakit",style: TextStyle(color: Color(0xff494343)),)
                ],
              ),
            ),
          )  
        ],
      )
      
    );
  }
}