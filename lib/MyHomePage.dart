
import 'package:clean_air/DanieWidok.dart';
import 'package:clean_air/DodawanieDoBazy.dart';

import 'Dane.dart';
import 'Edycja.dart';
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
    DanieWidok(),
    DodawanieDoBazy()
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
              icon: Icon(Icons.add_chart_sharp ), label: "powietrze"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined ), label: "powietrze"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart ), label: "pogoda")
        ],
      ),
    );
  }
}
