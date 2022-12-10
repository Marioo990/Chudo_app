import 'dart:async';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Edycja extends StatefulWidget {
  @override
  State<Edycja> createState() => _EdycjaState();
}

class _EdycjaState extends State<Edycja> {

  final _imie = TextEditingController();
  late TextEditingController _wiek;
  late TextEditingController _waga;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    new Color(0xff6E6CD8),
                    new Color(0xff40A0EF),
                    new Color(0xff77E1EE)
                  ])),
        ),

        Align(
            alignment: FractionalOffset.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:50),
                  child: TextField(
                    controller: _imie,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: ("Podaj ile gramów "),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            // przycisk do czyszcznia textfield
                            _imie.clear();
                          },
                          icon: const Icon(Icons.clear)),
                    ),

                  ),

                  )

                ]
            )
        ),
      ]),
    );
  }
}
