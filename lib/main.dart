import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newapp/bottombar/appbarbottom.dart';
import 'package:newapp/splash/splashpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
