import 'dart:async';

import 'package:flutter/material.dart'
;
import 'package:flutterbootcamp/home_screen.dart';
class splashscreen extends StatefulWidget {
  static const String id ="splashscreen";
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>homescreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        child: Icon(Icons.facebook,size: 40,color: Colors.white,),
      ),
    );
  }
}
