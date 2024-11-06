import 'package:iasistevb/models/details_data.dart';

class Pcr {
  Pcr({
    this.megasphaeraType1,
    this.atopobiumVaginalis,
  });

  double? megasphaeraType1;
  double? atopobiumVaginalis;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  int getProbability(int value1, int value2) {
    probability = ((value1 - value2) / value1 * 100).roundToDouble().toInt();
    return probability;
  }

  void get determiningValues {
    if (megasphaeraType1! <= 0) {
      result = 'VB-Negativo';
      getProbability(96, 4);
    } else {
      if (atopobiumVaginalis! <= 0) {
        result = 'VB-Negativo';
        getProbability(3, 1);
      } else {
        result = 'VB-Positivo';
        getProbability(33, 1);
      }
    }

    details.add(DetailsData(
        indicator: 'Megasphaera type 1 (MT1)',
        value: megasphaeraType1.toString()));
    details.add(DetailsData(
        indicator: 'Atopobium vaginalis (Av)',
        value: atopobiumVaginalis.toString()));
  }
}
