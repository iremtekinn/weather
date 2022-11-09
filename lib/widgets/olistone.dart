import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Olistone extends StatefulWidget {
  final String imgUrl;
  final String text1;
  final String text2;
  const Olistone({super.key, required this.imgUrl, required this.text1, required this.text2});

  @override
  State<Olistone> createState() => _OlistoneState();
}

class _OlistoneState extends State<Olistone> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
       child:Container(
        width:78,
        height:10,
        color:Colors.grey.shade100,
        child:Column(
          children: [
            Image.asset(widget.imgUrl),
            Text(widget.text1+"°",style: TextStyle(fontWeight: FontWeight.bold),),
            Text(widget.text2, style:TextStyle(color:Colors.grey.shade700,fontSize: 11))
          ],
        )
        
       )
    );
  }
}