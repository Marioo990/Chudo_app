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
      Produkt(nazwa: 'Mleko', kalorie: 51, bialko: 3.3, tluszcze: 2.0, cukry: 4.9),
      Produkt(nazwa: 'Chleb', kalorie: 248, bialko: 6.1, tluszcze: 1.3, cukry: 56.3),
      Produkt(nazwa: 'Makaron', kalorie: 373, bialko: 12, tluszcze: 2.6, cukry: 76.8),
      Produkt(nazwa: 'Ryż biały', kalorie: 344, bialko: 6.7, tluszcze: 0.7, cukry: 78.9),
      Produkt(nazwa: 'Jogurt naturalny', kalorie: 60, bialko: 4.3, tluszcze: 2.0, cukry: 6.2),
      Produkt(nazwa: 'Jajko', kalorie: 139, bialko: 12.5, tluszcze: 9.7, cukry: 0.6),
      Produkt(nazwa: 'Kasza jaglana', kalorie: 346, bialko: 10.5, tluszcze: 2.9, cukry: 71.6),
      Produkt(nazwa: 'Ser żółty', kalorie: 313, bialko: 26.1, tluszcze: 23.4, cukry: 0.1),
      Produkt(nazwa: 'Szynka', kalorie: 253, bialko: 17.1, tluszcze: 20.3, cukry: 0.9),
      Produkt(nazwa: 'Łosoś wędzony', kalorie: 162, bialko: 21.5, tluszcze: 8.4, cukry: 0.0),
      Produkt(nazwa: 'Płatki kukurydziane', kalorie: 363, bialko: 6.9, tluszcze: 2.5, cukry: 83.6),
      Produkt(nazwa: 'Pierś z kurczaka', kalorie: 107, bialko: 23, tluszcze: 0.5, cukry: 0),
      Produkt(nazwa: 'Wafle ryżowe', kalorie: 390, bialko: 8, tluszcze: 3, cukry: 81),
      Produkt(nazwa: 'Sok pomarańczowy', kalorie: 43, bialko: 0.6, tluszcze: 0.1, cukry: 9.9),
      Produkt(nazwa: 'Ser twarogowy', kalorie: 101, bialko: 12.3, tluszcze: 4.3, cukry: 3.3),
      Produkt(nazwa: 'Pieczywo tostowe', kalorie: 305, bialko: 8.1, tluszcze: 4.7, cukry: 58.8),
      Produkt(nazwa: 'Olej rzepakowy', kalorie: 884, bialko: 0, tluszcze: 100, cukry: 0),
      Produkt(nazwa: 'Banan', kalorie: 95, bialko: 1, tluszcze: 0.3, cukry: 23.5),
      Produkt(nazwa: 'Cukier', kalorie: 405, bialko: 0, tluszcze: 0, cukry: 99.8),
      Produkt(nazwa: 'Dżem', kalorie: 154, bialko: 0.4, tluszcze: 0.2, cukry: 37.5),


    ];
  }


}



