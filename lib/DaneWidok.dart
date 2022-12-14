import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class DaneWidok extends StatefulWidget {
  @override
  State<DaneWidok> createState() => _DaneWidokState();
}

class _DaneWidokState extends State<DaneWidok> {
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
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 40,
            right: 40,
            bottom: 500,

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
                        "Twoje Dane",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 25.0,
                                height: 1.2,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                ),
              )),
        ),
        Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 45.0)),




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
                                "Imi??",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "Adrian",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Wiek",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "20 Lat",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),

                Padding(padding: EdgeInsets.only(top: 55.0)),
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
                                "P??e??",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "M????czyzna",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Waga",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "98Kg",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 55.0)),



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
                                "Cel",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "Schudn????",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              )
                            ],
                          ),
                        ),

                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Aktywno????",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 25.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Padding(padding: EdgeInsets.only(top: 2.0)),
                              Text(
                                "Bieganie",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 48.0),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40.0, right: 40.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.only(top: 12.0, bottom: 12.0))),
                            onPressed: () {

                            },
                            child: Text(
                              'Edytuj Dane',
                              style: TextStyle(fontSize: 16.0, color: Colors.black),
                            ),
                          ),
                        ))
                ),
              ],
            )),
      ]),
    );
  }
}
