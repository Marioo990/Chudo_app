import 'dart:async';
import 'package:chudo_app/Powodzenie.dart';
import 'package:hive/hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:chudo_app/Zmienne.dart';
import 'MyHomePage.dart';



class DodawanieDoBazy extends StatefulWidget {
  @override
  State<DodawanieDoBazy> createState() => _DodawanieDoBazyState();
}

class _DodawanieDoBazyState extends State<DodawanieDoBazy> {
  var waga=0.0;
  var bialko=0.0;
  var kalorie=0.0;
  var tluszcze=0.0;
  var cukry=0.0;
  var bialko7=0.0;
  var kalorie7=0.0;
  var tluszcze7=0.0;
  var cukry7=0.0;

  final _myUser =  Hive.box('mybox');
  final _waga = TextEditingController();
  final _kcal = TextEditingController();
  final _bialko = TextEditingController();
  final _tluszcze = TextEditingController();
  final _cukry = TextEditingController();


      Produkt1 setProdukt = new Produkt1( 140, 50  ,  2,  23, 12,);
    void pobranie_danych(){
      setState(() {
        setProdukt.setwaga=double.parse(_waga.text);
        setProdukt.setkalorie= double.parse(_kcal.text);
        setProdukt.setbialko=double.parse(_bialko.text);
        setProdukt.settluszcze=double.parse(_tluszcze.text);
        setProdukt.setcukry=double.parse(_cukry.text);
      });
    }
  void licz_wszystko(){
   waga=double.parse(_waga.text);
   kalorie= double.parse(_kcal.text);
   bialko=double.parse(_bialko.text);
   tluszcze=double.parse(_tluszcze.text);
   cukry=double.parse(_cukry.text);
   kalorie= kalorie/100;
   bialko=bialko/100;
   tluszcze=tluszcze/100;
   cukry-cukry/100;
   kalorie=kalorie*waga;
   bialko=bialko*waga;
   tluszcze=tluszcze*waga;
   cukry-cukry*waga;

  }
  void dodaj(){
    var add_kalorie = _myUser.get(21);
    var add_bialko = _myUser.get(22);
    var add_tluszcze= _myUser.get(23);
    var add_cukry = _myUser.get(24);
    var chwilowe_kalorie7 =_myUser.get(31);
    var chwilowe_bialo7 =_myUser.get(32);
    var chwilowe_tluszcze7 =_myUser.get(33);
    var chwilowe_cukry7 =_myUser.get(34);
    kalorie = kalorie + add_kalorie;
    bialko = bialko + add_bialko;
    tluszcze = tluszcze+ add_tluszcze;
    cukry=cukry + add_cukry;
    cukry=cukry + add_cukry;
    kalorie7=chwilowe_kalorie7+kalorie;
    bialko7=chwilowe_bialo7+bialko;
    tluszcze7=chwilowe_tluszcze7+tluszcze;
    cukry7=chwilowe_cukry7+cukry;

  }
  void load_w(){
    setState(() {

      _myUser.put(21,kalorie);
      _myUser.put(22,bialko);
      _myUser.put(23,tluszcze);
      _myUser.put(24,cukry);
      _myUser.put(41,kalorie7 );
      _myUser.put(42,bialko7 );
      _myUser.put(43,tluszcze7);
      _myUser.put(44,cukry7 );

    });
  }
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
                      controller: _waga,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj wagę w gramach"),
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
                      controller: _kcal,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile kcal na 100g"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _kcal.clear();
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
                      controller: _bialko,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile białka na 100g"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _bialko.clear();
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
                      controller: _tluszcze,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile tłuszczy na 100g"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _tluszcze.clear();
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
                      controller: _cukry,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: ("Podaj ile węglowodanów na 100g"),
                        suffixIcon: IconButton(
                            onPressed: () {
                              // przycisk do czyszcznia textfield
                              _cukry.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0),
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
                                pobranie_danych();

                                licz_wszystko();
                                dodaj();
                                load_w();


                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Powodzenie(),
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


class Produkt1 {
  late double waga;
  late double kalorie;
  late double bialko;
  late double tluszcze;
  late double cukry;



  Produkt1(
      this.waga,
      this.kalorie,
      this.bialko,
      this.tluszcze,
      this.cukry,

      );


  set setwaga(double x){
    waga=x;
  }

  set setkalorie(double x){
    kalorie = x;
  }
  set setbialko (double x){
    bialko= x;
  }
  set settluszcze (double x){
    tluszcze= x;
  }
  set setcukry (double x){
    cukry= x;
  }
  double get getwaga=> this.waga;
  double get getbialko => this.bialko;
  double get getkalorie => this.kalorie;
  double get gettluszcze => this.tluszcze;
  double get getcukry => this.cukry;






}
