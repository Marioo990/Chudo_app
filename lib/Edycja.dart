import 'dart:async';
import 'package:chudo_app/Zmienne.dart';
import 'package:hive/hive.dart';

import 'MyHomePage.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:chudo_app/Zmienne.dart';
import 'Dane.dart';
import 'main.dart';


class Edycja extends StatefulWidget {
  @override
  State<Edycja> createState() => _EdycjaState();
}
final _myUser =  Hive.box('mybox');
class _EdycjaState extends State<Edycja> {
    var  _imie = TextEditingController();
  final _wiek = TextEditingController();
  final _waga = TextEditingController();
  final _tall = TextEditingController();

   User1 setUser =new  User1(0,"",0,0);

   void set_user(){
     setState(() {
       setUser.setimie=_imie.text;
       setUser.setwaga = int.parse(_waga.text);

       setUser.setwiek=int.parse(_wiek.text);
       setUser.setwzrost=int.parse(_tall.text);

     });


   }
   int i =1 ;

   void loa(){
     setState(() {

       _myUser.put(1,setUser.getimie);
       _myUser.put(2,setUser.getwaga);
       _myUser.put(3,setUser.getwiek);
       _myUser.put(4,setUser.getwzrost);

     });
   }


  @override
  Widget build(BuildContext context) {


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
                          hintText: ("Podaj imię "),
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
                          hintText: ("Podaj swój wiek"),
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
                        controller: _tall,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: ("Podaj swój wzrost"),
                          suffixIcon: IconButton(
                              onPressed: () {
                                // przycisk do czyszcznia textfield
                                _tall.clear();
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
                          hintText: ("Podaj swoją wagę"),
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
                      child: Container(
                        alignment: FractionalOffset.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Wybierz cel",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          fontSize: 20.0,
                                          height: 1.2,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700))),
                            ),
                            Cele(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        alignment: FractionalOffset.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Wybierz płeć",
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        alignment: FractionalOffset.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text("Wybierz aktywność",
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
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 48.0),
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
                                        EdgeInsets.only(
                                            top: 12.0, bottom: 12.0))),
                                onPressed: () {
                                  set_user();
                                  loa();
                                  Navigator.pushReplacement(
                                    context,

                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),

                                    ),

                                  );
                                },
                                child: Text(
                                  'Zapisz ',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.black),
                                ),
                              ),
                            ))),
                  ])),
        ],
      ),
    );
  }
}

class Cele extends StatefulWidget {
  const Cele({key});

  @override
  State<Cele> createState() => _CeleState();
}

class _CeleState extends State<Cele> {
  final _cel_ = Cel.cel_lista();
  List<Cel> lista_cel = [];
  Cel? dropdownValue;

  @override
  void initState() {

    lista_cel = _cel_;
    Cel dropdownValue = lista_cel.first;
    super.initState();
    //print(dropdownValue);
  }
przypis(value) {
  var _celS = value.cel;
}
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Cel>(
      hint: Text('wybierz'),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (Cel? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          przypis(value);
        });
      },
      items: lista_cel.map<DropdownMenuItem<Cel>>((Cel value) {
        return DropdownMenuItem<Cel>(
          value: value,
          child: Text(value.cel),
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
  final _plec_ = Plec.list_plec();
  List<Plec> plec_list = [];
  Plec? dropdownValue;
  @override
  void initState() {
    plec_list = _plec_;
    Plec dropdownValue = plec_list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Plec>(
      hint: Text('wybierz'),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (Plec? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: plec_list.map<DropdownMenuItem<Plec>>((Plec value) {
        return DropdownMenuItem<Plec>(
          value: value,
          child: Text(value.nazwa),
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
  final _aktywnosc=Aktywnosc_class.list_Aktywnosc();
  List<Aktywnosc_class>aktywnosc_list =[];
  Aktywnosc_class? dropdownValue ;
  @override
  void initState(){
    aktywnosc_list = _aktywnosc;
    Aktywnosc_class dropdownValue=aktywnosc_list.first;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Aktywnosc_class>(
      hint: Text('wybierz'),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.white,
      ),
      onChanged: (Aktywnosc_class? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: aktywnosc_list.map<DropdownMenuItem<Aktywnosc_class>>((Aktywnosc_class value) {
        return DropdownMenuItem<Aktywnosc_class>(
          value: value,
          child: Text(value.nazwa),
        );
      }).toList(),
    );
  }
}

class Aktywnosc_class {
  late String nazwa;
  late double wartosc;

  Aktywnosc_class({required this.nazwa, required this.wartosc});

  static List<Aktywnosc_class> list_Aktywnosc() {
    return [
      Aktywnosc_class(nazwa: 'Bieganie', wartosc: 500),
      Aktywnosc_class(nazwa: 'Siłownia', wartosc: 500),
      Aktywnosc_class(nazwa: 'Tryb siedzący', wartosc: 500),
      Aktywnosc_class(nazwa: 'Spacer', wartosc: 500),
      Aktywnosc_class(nazwa: 'Piłka nożna', wartosc: 500),
    ];
  }
}

class Plec {
  late String nazwa;
  late bool teza;


  Plec(this.teza, this.nazwa);

  static List<Plec> list_plec() {
    return [
      Plec(true, 'Kobieta'),
      Plec(false, 'Mężczyzna'),
    ];
  }
}


class Cel {
  late String cel;

  late int wartosc = 1;

  Cel({required this.cel, required this.wartosc});

  static List<Cel> cel_lista() {
    return [
      Cel(cel: 'Schudnąć', wartosc: -500),
      Cel(cel: 'utrzymać wagę', wartosc: 0),
      Cel(cel: 'przytyć', wartosc: 500),
    ];
  }
}
