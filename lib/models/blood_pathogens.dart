import 'package:iasistevb/models/details_data.dart';

class BloodPathogens {
  BloodPathogens({
    this.mycoplasmaHominis,
    this.ureaplasmaUrealyticum,
    this.ureaplasmaParvum,
  });

  String? mycoplasmaHominis;
  String? ureaplasmaUrealyticum;
  String? ureaplasmaParvum;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  int getProbability(int value1, int value2) {
    probability = ((value1 - value2) / value1 * 100).roundToDouble().toInt();
    return probability;
  }

  void get determiningValues {
    if (mycoplasmaHominis == 'Verdadero') {
      result = 'VB-Positivo';
      getProbability(23, 2);
    } else {
      if (ureaplasmaUrealyticum == 'Verdadero') {
        if (ureaplasmaParvum == 'Verdadero') {
          result = 'VB-Positivo';
          getProbability(4, 1);
        } else {
          result = 'VB-Negativo';
          getProbability(3, 0);
        }
      } else {
        result = 'VB-Negativo';
        getProbability(102, 0);
      }
    }
    details.add(DetailsData(
        indicator: 'Mycoplasma hominis (Mh)', value: mycoplasmaHominis!));
    details.add(DetailsData(
        indicator: 'Ureaplasma urealyticum (Uu)',
        value: ureaplasmaUrealyticum!));
    details.add(DetailsData(
        indicator: 'Ureaplasma Parvum (Up)', value: ureaplasmaParvum!));
  }
}
