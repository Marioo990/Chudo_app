
import 'DaneWidok.dart';
import 'DanieWidok.dart';
import 'package:flutter/material.dart';

import 'AktualneWidok.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  final screens = [
    AktualneWidok(),
    DaneWidok(),
    DanieWidok()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 38,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.masks_outlined), label: "powietrze"),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline), label: "powietrze"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_cloudy_outlined), label: "pogoda")
        ],
      ),
    );
  }
}
