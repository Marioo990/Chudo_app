
var wiek = 25;
var waga = 80;
var wzrost = 160;
var kalorie = 1680;
var calkowite_kalorie = 1518;
var bialko = 60;

var calkowite_bialko = 76;

var tluszcze = 40;

var calkowite_tluszcze = 51;
var cukry = 100;

var calkowite_cukry = 190;

var kalorie_7 = 1680;
var calkowite_kalorie_7 = 10626;
var bialko_7 = 693;

var calkowite_bialko_7 = 532;

var tluszcze_7 = 430;

var calkowite_tluszcze_7 = 357;
var cukry_7 = 1234;

var calkowite_cukry_7 = 1330;


String kalorieAsString = kalorie.toString();
String wiekAsString = wiek.toString();
String wagaAsString = waga.toString();
//String imieAsString = User.imie.toString();
String wzrostAsString = wzrost.toString();
String calkowite_kalorieAsString = calkowite_kalorie.toString();
String calkowite_bialkoAsString = calkowite_bialko.toString();
String calkowite_cukryAsString = calkowite_cukry.toString();
String calkowite_tluszczeAsString = calkowite_tluszcze.toString();
String cukryAsString = cukry.toString();
String tluszczeAsString = tluszcze.toString();
String bialkoAsString = bialko.toString();

class User {
   String? imie;
  late int wiek;
  late int waga;
  late int wzrost;

  User(
      {required this.wiek,
      required this.imie,
      required this.waga,
      required this.wzrost});

  static List<User> dane_User() {
    return [User(wiek: 22, imie: 'Monika', waga: 80, wzrost: 190)];
  }
}

class Aktywnosc {
  late String nazwa;
  late double wartosc;

  Aktywnosc({required this.nazwa, required this.wartosc});

  static List<Aktywnosc> list_Aktywnosc() {
    return [
      Aktywnosc(nazwa: 'Bieganie', wartosc: 500),
      Aktywnosc(nazwa: 'Siłownia', wartosc: 500),
      Aktywnosc(nazwa: 'Tryb siedzący', wartosc: 500),
      Aktywnosc(nazwa: 'Spacer', wartosc: 500),
      Aktywnosc(nazwa: 'Piłka nożna', wartosc: 500),
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
      Cel(cel: 'Schudnąć', wartosc: 500),
      Cel(cel: 'utrzymać wagę', wartosc: 0),
      Cel(cel: 'przytyć', wartosc: 500),
    ];
  }
}

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
}

class Produkt {
  late String nazwa;
  late double kalorie;
  late double bialko;
  late double tluszcze;
  late double cukry;

  Produkt(
      {required this.nazwa,
      required this.kalorie,
      required this.bialko,
      required this.tluszcze,
      required this.cukry});

  static List<Produkt> produktList() {
    return [
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
    ];
  }

  jeden_gram() {
    kalorie = kalorie / 100;
    bialko = bialko / 100;
    tluszcze = tluszcze / 100;
    cukry = cukry / 100;
  }
}

String kalorieAsString_7 = kalorie_7.toString();
String calkowite_kalorieAsString_7 = calkowite_kalorie_7.toString();
String calkowite_bialkoAsString_7 = calkowite_bialko_7.toString();
String calkowite_cukryAsString_7 = calkowite_cukry_7.toString();
String calkowite_tluszczeAsString_7 = calkowite_tluszcze_7.toString();
String cukryAsString_7 = cukry_7.toString();
String tluszczeAsString_7 = tluszcze_7.toString();
String bialkoAsString_7 = bialko_7.toString();
