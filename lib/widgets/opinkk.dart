import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Opinkk extends StatefulWidget {
  const Opinkk({super.key});

  @override
  State<Opinkk> createState() => _OpinkkState();
}

class _OpinkkState extends State<Opinkk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:86,
      //color:Colors.yellow,
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage("assets/opink.png"),
        fit:BoxFit.cover
        )
      ),
      child:Row(
        
        children: [
          Image.asset("assets/pbulut.png"),
          SizedBox(width:10),
         Column(
           children: [
             Text("Cuca esok hari kemungkinan "),
             Text("akan terjadi hujan di siang hari"),
             SizedBox(height: 10,),
             Text("Jangan lupa bawa payung ya")
           ],
         ),
         
        ],
      )
    );
  }
}