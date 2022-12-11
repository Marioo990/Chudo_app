import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MyHomePage.dart';



class DodawanieDoBazy extends StatefulWidget {
  @override
  State<DodawanieDoBazy> createState() => _DodawanieDoBazyState();
}

class _DodawanieDoBazyState extends State<DodawanieDoBazy> {
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
                        hintText: ("Podaj nazwę produktu"),
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
                        hintText: ("Podaj ile Kcal na 100g"),
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
                      controller: _wiek,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile białka na 100g"),
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
                    child: TextField(
                      controller: _wiek,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile tłuszczy na 100g"),
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
                    child: TextField(
                      controller: _wiek,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile cukrów na 100g"),
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
                                'Zapisz produkt ',
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


