import 'package:app/models/details_data.dart';

class Pcr {
  Pcr({
    this.megasphaeraType1,
    this.bvAssociatedBacterium2,
    this.atopobiumVaginalis,
  });

  double? megasphaeraType1;
  double? bvAssociatedBacterium2;
  double? atopobiumVaginalis;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  void get determiningValues {
    if (megasphaeraType1! <= 0) {
      result = 'Normal';
      probability = ((79 - 15) / 79 * 100).toInt();
    } else {
      if (bvAssociatedBacterium2! <= 25.77) {
        if (atopobiumVaginalis! <= 0) {
          result = 'Indeterminado';
          probability = ((2 - 1) / 2 * 100).toInt();
        } else {
          result = 'VB-Positivo';
          probability = ((19 - 5) / 19 * 100).toInt();
        }
      } else {
        result = 'Indeterminado';
        probability = 100;
      }
    }
    details.add(DetailsData(
        indicator: 'Megasphaera type 1 (MT1)',
        value: megasphaeraType1.toString()));
    details.add(DetailsData(
        indicator: 'BV-associated bacterium-2 (BVAB2)',
        value: bvAssociatedBacterium2.toString()));
    details.add(DetailsData(
        indicator: 'Atopobium vaginalis (Av)',
        value: atopobiumVaginalis.toString()));
  }
}
