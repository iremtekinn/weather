import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tdurum extends StatefulWidget {
  const Tdurum({super.key});

  @override
  State<Tdurum> createState() => _TdurumState();
}

class _TdurumState extends State<Tdurum> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text("Tanjungsiang, Subang",style: TextStyle(color:Colors.white),),
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
                  Text("Senin,20 Desember 2021-3.30 PM",style: TextStyle(color:Colors.white),),
                  SizedBox(height:20),
                  Image.asset("assets/t1.png"),
                  //SizedBox(height:10),
                  Text("18°C",style: TextStyle(color:Colors.white,fontSize:17),),
                  SizedBox(height:10),
                  Text("Hujan Berawan",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize:17)),
                  SizedBox(height:10),
                  Row(
                    children: [
                      Text("Terakhir update 3.00 PM",style:TextStyle(color:Colors.white,fontSize: 14)),
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
}