import 'dart:async';

import 'SiedemAktualneWidok.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Zmienne.dart';
import 'main.dart';
class AktualneWidok extends StatefulWidget {
  @override
  State<AktualneWidok> createState() => _AktualneWidokState();
}

class _AktualneWidokState extends State<AktualneWidok> {

  final _daned = Dane.dane_Dane;
  List<Dane> _dane_Dane_ = [];

  final _dieta = Dieta.dane_Dieta;
  List<Dieta> _dane_Dieta_ = [];

  @override
  void initState() {
    _dane_Dane_ = _daned;
    _dane_Dieta_ = _dieta;

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var ckalorie = _dane_Dieta_.first.calkowite_kalorie;
    var cbialko = _dane_Dieta_.first.calkowite_bialko;
    var ctluszcze = _dane_Dieta_.first.calkowite_tluszcze;
    var ccukry = _dane_Dieta_.first.calkowite_cukry;
    var bkalorie = _dane_Dane_.first.kalorie;
    var bbialko = _dane_Dane_.first.bialko;
    var btluszcze= _dane_Dane_.first.tluszcze;
    var bcukry = _dane_Dane_.first.cukry;

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
                Padding(padding: EdgeInsets.only(top: 25.0),
                    ),
                CircleAvatar(
                  radius: 91.0,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(('$bkalorie'),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 40.0,
                                    height: 1.2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))),
                        Text(
                          "/"+ ('$ckalorie'),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 26.0,
                                  height: 1.2,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          "Kcal ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: 16.0,
                                  height: 1.2,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 14.0)),

                Text(
                  "Białko",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 24.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),

                Padding(padding: EdgeInsets.only(top: 15.0)),
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
                                "Brakuje",
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
                                "$bbialko g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 48,
                          color: Colors.white,
                          thickness: 1,
                        ),
                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Całkowite",
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
                                "$cbialko g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 15.0)),


                Text(
                  "Węglowodany",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 24.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
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
                                "Brakuje",
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
                                "$bcukry g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 48,
                          color: Colors.white,
                          thickness: 1,
                        ),
                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Całkowite",
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
                                "$ccukry g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 15.0)),


                Text(
                  "Tłuszcze",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 24.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
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
                                "Brakuje",
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
                                "$btluszcze g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 48,
                          color: Colors.white,
                          thickness: 1,
                        ),
                        Container(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Całkowite",
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
                                "$ctluszcze g",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        fontSize: 26.0,
                                        height: 1.2,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),


                            ],
                          ),
                        )
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.only(top: 12.0, bottom: 12.0))),
                            onPressed: () {

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SiedemAktualneWidok(),
                                ),
                              );
                            },
                            child: Text(
                              'Przejdź   na dane z 7-dni',
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
