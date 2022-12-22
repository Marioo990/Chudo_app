import 'package:hive/hive.dart';
import 'MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dane.dart';



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


   void load(){
     setState(() {

       _myUser.put(1,setUser.getimie);
       _myUser.put(2,setUser.getwaga);
       _myUser.put(3,setUser.getwiek);
       _myUser.put(4,setUser.getwzrost);

     });
   }

    void licz() {
     double masa =_myUser.get(2).toDouble();
     double wzrost =_myUser.get(4).toDouble();
     double wiek =_myUser.get(3).toDouble();
     double cel =_myUser.get(10).toDouble();
     double aktywnosc = _myUser.get(12).toDouble();
     double bialko =0 ;
     double cukry =0 ;
     double tluszcze =0 ;
      var wynik = 0.0 ;
      bool wartosc_plec = _myUser.get(11);
      if (wartosc_plec) {
        wynik = 655.1 + (9.563 * masa) + (5.0003 * wzrost)
            - (6.775 * wiek)+ (aktywnosc)+(cel);

      } else {
        wynik = 66.5 + (13.75 * masa) + (5.0003 * wzrost)
            - (6.775 * wiek) + (aktywnosc)+(cel);

      }
      bialko= 0.25*wynik;    bialko = bialko/4;
      tluszcze= 0.2 *wynik;  tluszcze=tluszcze/9;
      cukry = 0.55 *wynik;cukry=cukry/4;
     int b= bialko.round();
     int t =tluszcze.round();
     int c = cukry.round();
     int wwynik = wynik.round();

      _myUser.put(13,wwynik);
     _myUser.put(14,b);
     _myUser.put(15,t);
     _myUser.put(16,c);

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
                                  load();
                                  licz();
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
  _myUser.put(10,value.wartosc);
  _myUser.put(5,value.cel);
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
  przypis(value) {
    _myUser.put(11,value.teza);
    _myUser.put(6,value.nazwa);
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
          przypis(value);
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
  przypis(value) {
    _myUser.put(12,value.wartosc);
    _myUser.put(7,value.nazwa);
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
          przypis(value);
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
      Aktywnosc_class(nazwa: 'Bieganie', wartosc: 400),
      Aktywnosc_class(nazwa: 'Siłownia', wartosc: 500),
      Aktywnosc_class(nazwa: 'Tryb siedzący', wartosc: 0.0),
      Aktywnosc_class(nazwa: 'Spacer', wartosc: 100),
      Aktywnosc_class(nazwa: 'Piłka nożna', wartosc: 600),
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

  late double wartosc = 1.0;

  Cel({required this.cel, required this.wartosc});

  static List<Cel> cel_lista() {
    return [
      Cel(cel: 'Schudnąć', wartosc: -500.0),
      Cel(cel: 'Utrzymać wagę', wartosc: 0.0),
      Cel(cel: 'Przytyć', wartosc: 500.0),
    ];
  }
}
