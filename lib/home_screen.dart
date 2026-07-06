import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  static const String id = "homescreen";
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.blue)),
    );
  }
}
