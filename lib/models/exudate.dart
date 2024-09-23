import 'package:app/models/details_data.dart';

class Exudate {
  Exudate({
    required this.mycoplasmaHominis,
    required this.candidaAlbicans,
    required this.ureaplasmaUrealyticum,
  });

  final String mycoplasmaHominis;
  final String candidaAlbicans;
  final String ureaplasmaUrealyticum;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  void get determiningValues {
    if (mycoplasmaHominis != 'Inseguro' &&
        candidaAlbicans != 'Inseguro' &&
        ureaplasmaUrealyticum != 'Inseguro') {
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
          indicator: 'Mycoplasma hominis (Mh)', value: mycoplasmaHominis));
      details.add(DetailsData(
          indicator: 'Candida albicans (Ca)', value: candidaAlbicans));
      details.add(DetailsData(
          indicator: 'Ureaplasma urealyticum (Uu)',
          value: ureaplasmaUrealyticum));
    }
  }
}
