import 'package:app/models/details_data.dart';

class Exudate {
  Exudate({
    //Se quitó el required
    this.mycoplasmaHominis,
    this.candidaAlbicans,
    this.ureaplasmaUrealyticum,
  });

  //Se agregó el ? y quitó el final
  String? mycoplasmaHominis;
  String? candidaAlbicans;
  String? ureaplasmaUrealyticum;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  void get determiningValues {
    if (mycoplasmaHominis == 'Verdadero') {
      if (candidaAlbicans == 'Verdadero') {
        result = 'Indeterminado';
        probability = ((2 - 1) / 2 * 100).toInt();
      } else {
        result = 'VB-Positivo';
        probability = ((17 - 9) / 17 * 100).toInt();
      }
    } else {
      if (ureaplasmaUrealyticum == 'Verdadero') {
        result = 'Indeterminado';
        probability = 100;
      } else {
        result = 'Normal';
        probability = ((82 - 21) / 82 * 100).toInt();
      }
    }
    details.add(DetailsData(
        indicator: 'Mycoplasma hominis (Mh)',
        value: mycoplasmaHominis!)); //Se les agregó el "!"
    details.add(DetailsData(
        indicator: 'Candida albicans (Ca)', value: candidaAlbicans!));
    details.add(DetailsData(
        indicator: 'Ureaplasma urealyticum (Uu)',
        value: ureaplasmaUrealyticum!));
  }
}
