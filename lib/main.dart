import 'package:flutter/material.dart';
import 'package:flutterbootcamp/home_screen.dart';
import 'package:flutterbootcamp/splash_screen.dart';

void main() {
  runApp(bootcamp());
}

class bootcamp extends StatelessWidget {
  const bootcamp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashscreen.id,
      routes: {splashscreen.id: (context) => splashscreen(),homescreen.id: (context)=> homescreen()},
    );
  }
}
