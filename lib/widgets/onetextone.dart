import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Onetextone extends StatefulWidget {
  const Onetextone({super.key});

  @override
  State<Onetextone> createState() => _OnetextoneState();
}

class _OnetextoneState extends State<Onetextone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:25,
      color:Colors.white,
      child:Text("Cauca Per Jam",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 16))
    );
  }
}