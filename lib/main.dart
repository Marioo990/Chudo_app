

import 'package:chudo_app/MyHomePage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'PowitalnyWidok.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

Future<void> main() async {
  //inicjalizacja hive
  await Hive.initFlutter();
 //otwarcie box'a
  var box =await Hive.openBox('mybox');

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