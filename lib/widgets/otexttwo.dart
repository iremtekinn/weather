import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Otexttwo extends StatefulWidget {
  const Otexttwo({super.key});

  @override
  State<Otexttwo> createState() => _OtexttwoState();
}

class _OtexttwoState extends State<Otexttwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:20,
      color:Colors.blue,
      child:Text("Harian", style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
    );
  }
}