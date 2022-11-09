import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Olisttwo extends StatefulWidget {
  final String ohava;
  final String osehir;
  final String osehir2;
  final String oderece;
  const Olisttwo({super.key, required this.ohava, required this.osehir, required this.osehir2, required this.oderece});

  @override
  State<Olisttwo> createState() => _OlisttwoState();
}

class _OlisttwoState extends State<Olisttwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8,left:8,top:8),
      child: Container(
        decoration: BoxDecoration(
          color:Color(0xffD2DFFF),
          borderRadius: BorderRadius.circular(10)
          ),
        width:70,
       // height:70,
        
        child: Row(
          children: [
            Image.asset(widget.ohava),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.osehir,style:TextStyle(fontWeight:FontWeight.bold)),
                Text(widget.osehir2),
              ],
              
            ),
            SizedBox(width:120),
            Text(widget.oderece+"°C "),
            Icon(Icons.arrow_right)
          ],
        
        ),
      ),
    );
  }
}