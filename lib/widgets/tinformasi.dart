import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tinformasi extends StatefulWidget {
  const Tinformasi({super.key});

  @override
  State<Tinformasi> createState() => _TinformasiState();
}

class _TinformasiState extends State<Tinformasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:343,
      height:100,
      color:Colors.white,
      child:Row(
        children: [
          Image.asset("assets/group54.png"),
          Padding(
            padding: EdgeInsets.only(left: 10),
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
          )
        ],
      )
    );
  }
}