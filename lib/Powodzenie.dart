import 'dart:async';
import 'package:chudo_app/Login.dart';
import 'package:chudo_app/Zmienne.dart';

import 'MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class Powodzenie extends StatefulWidget {
  @override
  State<Powodzenie> createState() => _PowodzenieState();
}

class _PowodzenieState extends State<Powodzenie> {
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
                  colors: [new Color(0xff6E6CD8), new Color(0xff40A0EF), new Color(0xff77E1EE)])),


        ),
        Align(
            alignment: FractionalOffset.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('icons/weather-sunny.png'),
                  ),
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text("Z powodzeniem dodano kalorie i mikroskładniki do ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 30.0,
                            height: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    "${Strings.appTitle} !!! ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 30.0,
                            height: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ),
                ])),
        Positioned(
            left: 0,
            bottom: 15,
            right: 0,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(top: 12.0, bottom: 12.0))),
                    onPressed: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      'Powrót',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                )))
      ]),
    );
  }
}