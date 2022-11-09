import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Twotextone extends StatefulWidget {
  const Twotextone({super.key});

  @override
  State<Twotextone> createState() => _TwotextoneState();
}

class _TwotextoneState extends State<Twotextone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:370,
      height:30,
      color:Colors.white,
      child:Text("Detail Informasi",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
    );
  }
}