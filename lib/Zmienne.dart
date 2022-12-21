
import 'package:chudo_app/DanieWidok.dart';
import 'package:chudo_app/Edycja.dart';


class Dieta {
  late double calkowite_kalorie;
  late double calkowite_bialko;
  late double calkowite_tluszcze;
  late double calkowite_cukry;

  late double calkowite_kalorie_7;
  late double calkowite_bialko_7;
  late double calkowite_tluszcze_7;
  late double calkowite_cukry_7;

  Dieta(
      this.calkowite_tluszcze,
      this.calkowite_cukry,
      this.calkowite_bialko,
      this.calkowite_kalorie,
      this.calkowite_bialko_7,
      this.calkowite_cukry_7,
      this.calkowite_kalorie_7,
      this.calkowite_tluszcze_7);

  suma_7() {
    calkowite_kalorie_7 = 7 * calkowite_kalorie;
    calkowite_bialko_7 = 7 * calkowite_bialko;
    calkowite_tluszcze_7 = 7 * calkowite_tluszcze;
    calkowite_cukry_7 = 7 * calkowite_cukry;
  }
  static List<Dieta> get dane_Dieta {
    return [Dieta(100, 200, 300, 400, 500, 600, 700, 800)];
  }
}

class Dane {
  late double kalorie_7;
  late double bialko_7;
  late double tluszcze_7;
  late double cukry_7;
  late double kalorie;
  late double bialko;
  late double tluszcze;

  late double cukry;

  Dane(this.cukry, this.tluszcze, this.bialko, this.kalorie, this.bialko_7,
      this.cukry_7, this.kalorie_7, this.tluszcze_7);
  static List<Dane> get dane_Dane {
    return [Dane(10, 20, 30, 40, 50, 60, 70, 80)];
  }
}

class Produkt {
  late String nazwa;
  late double kalorie;
  late double bialko;
  late double tluszcze;
  late double cukry;
   int id=0;

  Produkt(
      {required this.nazwa,
        required this.kalorie,
        required this.bialko,
        required this.tluszcze,
        required this.cukry,
        required this.id});

  static List<Produkt> produktList() {
    return [
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67,id: 0),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80, id: 1),
    ];
  }

  jeden_gram() {
    kalorie = kalorie / 100;
    bialko = bialko / 100;
    tluszcze = tluszcze / 100;
    cukry = cukry / 100;
  }
  licz() {
    int masa = 0;
    int wzrost = 0;
    int wiek = 0;
    double wynik = 0 ;
    bool wartosc_plec = true;
    if (wartosc_plec) {
       wynik = 655.1 + (9.563 * masa) + (5.0003 * wzrost) -
          (6.775 * wiek);
    } else {
       wynik = 66.5 + (13.75 * masa) + (5.0003 * wzrost) - (6.775 * wiek);
    }
    return wynik ;
  }
}



