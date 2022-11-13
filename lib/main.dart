import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:weather_app/pages/pageone.dart';
import 'package:weather_app/pages/pagetwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      //home: const Pageone()
      home:ShowCaseWidget(
        builder: Builder(
          builder: (context)=>Pageone()
          )
        )
    );
  }
}

