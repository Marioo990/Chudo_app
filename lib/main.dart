

import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'PowitalnyWidok.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  PowitalnyWidok(),
    );
  }
}
class Strings{
  static const String appTitle = 'Chudo App';
}