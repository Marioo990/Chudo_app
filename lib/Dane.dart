import 'dart:async';

import 'package:chudo_app/Zmienne.dart';

import 'Edycja.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Dane extends StatefulWidget {
  @override
  State<Dane> createState() => _DaneState();
}

class _DaneState extends State<Dane> {

  final _user = User.dane_User;
  List<User> _dane_user = [];

  @override
  void initState() {
    _dane_user = _user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var wiek = User.dane_User.first.wiek;
    var waga = _dane_user.first.waga;
    var wzrost = _dane_user.first.wzrost;
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
                            "Imię",
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
                            _dane_user.first.imie,
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
                            "$wiek",
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
                            '$wiek' + " Lat",
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
                            "Płeć",
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
                            "Kobieta",
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
                            '$waga' + " Kg",
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
                            "Schudnąć",
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
                            "Aktywność",
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
                            "Brak",
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
                Padding(padding: EdgeInsets.only(top: 25.0)),
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
                            "Wzrost",
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
                            '$wzrost' + "cm",
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
                  ],
                )),
                Padding(
                    padding: EdgeInsets.only(top: 20),
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
                              setState(() {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Edycja(),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              'Edytuj Dane',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black),
                            ),
                          ),
                        ))),
              ],
            )),
      ]),
    );
  }
}
class User {
  late String imie;
  late double wiek;
  late double waga;
  late double wzrost;




  User(
     {required this.wiek,
       required this.imie,
       required this.waga,
       required this.wzrost});

 set wagaa(double w){
  w= waga;
}
  set dimie(String x ){
    imie = x;
  }
  static List<User> get dane_User {
    return [User(wiek: 22, imie: "User" ,waga: 80, wzrost: 290)];
  }
}