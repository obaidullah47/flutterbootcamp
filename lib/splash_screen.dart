import 'dart:async';

import 'package:flutter/material.dart'
;
import 'package:flutterbootcamp/home_screen.dart';
import 'package:flutterbootcamp/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  }
  void islogin () async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    bool islogin = sp.getBool('isLogin') ?? false ;
    if (islogin){
      Timer(Duration(seconds: 2),(){
        Navigator.pushNamed(context, homescreen.id);
      });
    }else{
      Timer(Duration(seconds: 2),(){
        Navigator.pushNamed(context, login.id);
      });
    }

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
