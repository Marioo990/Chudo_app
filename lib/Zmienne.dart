import 'package:hive/hive.dart';
final _myUser =  Hive.box('mybox');
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
        required this.cukry,
        });

  static List<Produkt> produktList() {
    return [
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
      Produkt(nazwa: 'jogurt', kalorie: 250, bialko: 23, tluszcze: 43, cukry: 67),
      Produkt(nazwa: 'kotlet schabowy', kalorie: 350, bialko: 50, tluszcze: 43, cukry: 80),
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



