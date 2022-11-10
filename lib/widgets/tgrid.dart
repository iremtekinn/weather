import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tgrid extends StatefulWidget {
  final String timg;
  final String tmetin;
  final String tmetin2;
  const Tgrid({super.key, required this.timg, required this.tmetin, required this.tmetin2});

  @override
  State<Tgrid> createState() => _TgridState();
}

class _TgridState extends State<Tgrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(10)
      ),
      width:164,
      height:69,
      
      child: Row(
        children: [
        Image.asset(widget.timg),
        Padding(
          padding:EdgeInsets.only(top:10,left:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.tmetin,style:TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.tmetin2,style:TextStyle(fontSize: 12))
            ],
          ),
        )
        ],
      ),
      
    );
  }
}