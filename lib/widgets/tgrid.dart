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
      width:100,
      height:100,
      color:Colors.yellow,
      child: Row(
        children: [
        Image.asset(widget.timg),
        Column(
          children: [
            Text(widget.tmetin),
            Text(widget.tmetin2)
          ],
        )
        ],
      ),
      
    );
  }
}