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
        //color:Color(0xffFBFBFB),

        image:DecorationImage(image: AssetImage("assets/opink.png"),
        fit:BoxFit.cover
        )
      ),
      child:Row(
        children: [
          Padding(padding: EdgeInsets.only(top:6,left:24),
          child:Image.asset("assets/pbulut.png"),
          
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15),
                  child: Container(
                    width: 186,
                    height: 34,
                    child: Text("Cuaca esok hari kemıngkinan akan terjadi hujann di siang hari",style: TextStyle(color: Color(0xff201C1C),fontSize: 14,fontWeight: FontWeight.w600),)),
                ),
                 Padding(
                    padding: const EdgeInsets.only(top: 6,left: 15),
                    child: Container(
                    width: 158,
                    height: 16,
                    child: Text("Jangan lupa bawa payung ya",style: TextStyle(color: Color(0xff201C1C),fontSize: 13,fontWeight: FontWeight.w400))),
                  ),
            ],
          )
        ],
      )
    );
  }
}