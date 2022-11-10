

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/widgets/odropdown.dart';
//import 'package:weather_app/widgets/show.dart';

class Appbarone extends StatefulWidget {
  const Appbarone({super.key});

  @override
  State<Appbarone> createState() => _AppbaroneState();
}

class _AppbaroneState extends State<Appbarone> {
  
  
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding:EdgeInsets.only(left:5),
      margin:EdgeInsets.only(top:40),
      width:double.infinity,
      height:45,
      color:Colors.white,
      child:Row(
        children: [
          Image.asset("assets/olocation.png"),
          SizedBox(width:10),
          //Text("Tanjungsiang, Subang"),
          //SizedBox(width: 30,),
          Odropdown(),
          SizedBox(width: 125,),
          Icon(Icons.search)
          

        ],
      )
    );
  }
}