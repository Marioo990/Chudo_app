

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:chudo_app/Zmienne.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Edycja.dart';


import 'DodawanieDoBazy.dart';
import 'main.dart';
class DanieWidok extends StatefulWidget {
  @override
  State<DanieWidok> createState() => _DanieWidokState();
}

class _DanieWidokState extends State<DanieWidok> {
  @override
  Widget build(BuildContext context) {
    // zmienana do pobierania ilosci gramów posiłku
    final _liczba_gram = TextEditingController();
    final userpost = "";
    //var ssss = _celS;
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
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
                            "Dodaj produkt do diety",
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
            Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 100),
              child: Container(
                alignment: FractionalOffset.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text("Wybierz produkt",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 24.0,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400))),
                      ),
                      Jedzenie(),
                    ]),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _liczba_gram,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: ("Podaj ile gram"),
                      suffixIcon: IconButton(
                          onPressed: () {
                            // przycisk do czyszcznia textfield
                            _liczba_gram.clear();
                          },
                          icon: const Icon(Icons.clear)),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(top: 150.0),
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
                                'Dodaj produkt do diety',
                                style: TextStyle(fontSize: 19.0, color: Colors.black),
                              ),
                            ),
                          ))
                  ),
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
                                    builder: (context) => DodawanieDoBazy(),
                                  ),
                                );
                              },
                              child: Text(
                                'Dodaj produkt do bazy danych',
                                style: TextStyle(fontSize: 19.0, color: Colors.black),
                              ),
                            ),
                          ))
                  ),
                ],
              ),
            ),
          ],
        ));
    //]),
    //  );
  }
}

class Jedzenie extends StatefulWidget {
  const Jedzenie({key});

  @override
  State<Jedzenie> createState() => _jedzenie();
}

class _jedzenie extends State<Jedzenie> {
  late int idd;


  final _produkt = Produkt.produktList();
  List<Produkt> produkt_list = [];
  Produkt? dropdownValue;

  @override
  void initState() {
    produkt_list = _produkt;
    Produkt dropdownValue = produkt_list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Produkt>(
      hint: Text(
        'wybierz',
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
            textStyle: TextStyle(
                fontSize: 24.0,
                height: 1.2,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
      ),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (Produkt? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          //przekaz(value);
        });
      },
      items: produkt_list.map<DropdownMenuItem<Produkt>>((Produkt value) {
        return DropdownMenuItem<Produkt>(
          value: value,
          child: Text(
            value.nazwa,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 24.0,
                    height: 1.2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)),
          ),
        );

      }).toList(),
    );
  }


}