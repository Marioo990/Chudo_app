import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: EdgeInsets.only(top: 100.0),
          child: Container(
            alignment: FractionalOffset.center,
            child: ListView(

              children: [
                DropdownSearch<String>(
                  mode: Mode.MENU,
                  showSelectedItems: true,
                  items: ["kotlet", "cola ", "bułka", 'ser zółty'],
                  dropdownSearchDecoration: const InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Menu produktów",
                    hintText: "Wybierz produkt",
                  ),
                  popupItemDisabled: isItemDisabled,
                  onChanged: itemSelectionChanged,
                  //selectedItem: "",
                  showSearchBox: true,
                  searchFieldProps: TextFieldProps(
                    cursorColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


               TextField(
                controller: _liczba_gram,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: ("Podaj ile gramów "),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        // przycisk do czyszcznia textfield
                        _liczba_gram.clear();
                      },
                      icon: const Icon(Icons.clear)),
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

bool isItemDisabled(String s) {
  //return s.startsWith('I');

  if (s.startsWith('I')) {
    return true;
  } else {
    return false;
  }
}

void itemSelectionChanged(String? s) {
  print(s);
}

String? zaznacony_produkt(String? s, String? userpost) {
  userpost = s;
  return userpost;
}
