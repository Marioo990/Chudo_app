import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class EdycjaWidok extends StatefulWidget {
  @override
  State<EdycjaWidok> createState() => _EdycjaWidokState();
}

class _EdycjaWidokState extends State<EdycjaWidok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [ Colors.black, Colors.pinkAccent])),
        ),
        Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Jakość powietrza",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ),
                Padding(padding: EdgeInsets.only(top: 2.0)),
                Text(
                  "Bardzo dobra",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 22.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
                Padding(padding: EdgeInsets.only(top: 24.0)),
                CircleAvatar(
                  radius: 91.0,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("23",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 64.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))),
                        Text(
                          "CAQUI ⓘ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.2,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 28.0)),
                IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "pm 10",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2.0)),
                          Text(
                            "12%",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 22.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      width: 24,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Container(
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "pm 2,5",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2.0)),
                          Text(
                            "10 %",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 22.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    )
                  ],
                )),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Text(
                  "Stacja pomiarowa",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 12.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ),
                Padding(padding: EdgeInsets.only(top: 8.0)),
                Text(
                  " Warszawa",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(padding: EdgeInsets.only(top: 76.0)),
              ],
            )),
        Positioned(
            left: 8,
            bottom: (76) * 2,
            right: 0,
            top: 0,
            child: Container(
                alignment: Alignment.centerLeft,
                child: Stack(
                  children: [
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topLeft,
                        heightFactor: 1,
                        child: Image.asset('icons/danger-value-negative.png',
                            scale: 0.9),
                      ),
                    ),
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topLeft,
                        heightFactor: 1 - 0.4,
                        child: Image.asset('icons/danger-value.png',
                            color: Color(0xDDe27bb1), scale: 0.9),
                      ),
                    )
                  ],
                ))),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 62.0,
                        left: 10,
                        right: 10,
                        bottom: 14,
                      ),
                      child: Divider(
                        height: 10,
                        color: Colors.black,
                        thickness: 1,
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 24,
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.0),
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10.0),
                            height: 38.0,
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    alignment: Alignment.centerLeft,
                                    image: AssetImage('icons/happy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 8.0)),
                                  Text(
                                    "Skorzystaj z dobrego powietrza i wyjdż na dwór",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            fontSize: 12.0,
                                            height: 1.2,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300)),
                                  )
                                ],
                              ),
                            ),
                          ))),
                ],
              ),
            ))
      ]),
    );
  }

  havePermission() {
    return true;
  }
}
