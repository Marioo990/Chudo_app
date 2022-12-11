
/*
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

 */
import 'package:chudo_app/MyHomePage.dart';

import 'PowitalnyWidok.dart';
import 'testowy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: PowitalnyWidok(),
    );
  }

}
class Strings{
  static const String appTitle = 'Chudo App';
}