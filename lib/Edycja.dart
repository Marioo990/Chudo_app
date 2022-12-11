import 'dart:async';
import 'MyHomePage.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Dane.dart';
import 'main.dart';

const List<String> list = <String>['Schudnąć', 'Utrzymać wagę',  'Przytyć'];
const List<String> plec = <String>['Mężczyzna', 'Kobieta'];
const List<String> czynnosc = <String>['Bieganie', 'Siłownia','Brak'];
class Edycja extends StatefulWidget {
  @override
  State<Edycja> createState() => _EdycjaState();
}

class _EdycjaState extends State<Edycja> {
  final _imie = TextEditingController();
  final _wiek = TextEditingController();
  final _waga = TextEditingController();
  bool _plec = true;

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
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextField(
                      controller: _imie,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj imie "),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _imie.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextField(
                      controller: _wiek,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("podaj swój wiek"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _wiek.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextField(
                      controller: _waga,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("podaj swoją wage"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _waga.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child:Container(

                      alignment: FractionalOffset.center,


                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text("Wybierz Cel",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 20.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700))),
                          ),
                          Cel(),
                        ],
                      ),
                    ),),
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                    child:Container(

                      alignment: FractionalOffset.center,


                    child: Row(
                        children: <Widget>[
                          Expanded(child: Text("Wybierz płeć",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 20.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700))),
                          ),
                           Gender(),
                        ],
                      ),
                  ),),

                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child:Container(

                      alignment: FractionalOffset.center,


                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text("Wybierz Aktywność",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 20.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700))),
                          ),
                          Aktywnosc(),
                        ],
                      ),
                    ),),

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
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyHomePage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Zapisz ',
                                style: TextStyle(fontSize: 16.0, color: Colors.black),
                              ),
                            ),
                          ))
                  ),

                ])),

      ],

      ),
    );
  }
}


class Cel extends StatefulWidget {
  const Cel({key});



  @override
  State<Cel> createState() => _CelState();
}

class _CelState extends State<Cel> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,

      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,

        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}


class Gender extends StatefulWidget {
  const Gender({key});



  @override
  State<Gender> createState() => _Gender();
}

class _Gender extends State<Gender> {
  String dropdownValue = plec.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,

      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,

        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: plec.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}


class Aktywnosc extends StatefulWidget {
  const Aktywnosc({key});



  @override
  State<Aktywnosc> createState() => _Aktywnosc();
}

class _Aktywnosc extends State<Aktywnosc> {
  String dropdownValue = czynnosc.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,

      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,

        color: Colors.white,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: czynnosc.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}
