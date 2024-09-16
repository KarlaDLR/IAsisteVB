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
    if (mycoplasmaHominis != 'dont_know' &&
        candidaAlbicans != 'dont_know' &&
        ureaplasmaUrealyticum != 'dont_know') {
      if (mycoplasmaHominis == 'true') {
        details.add(DetailsData(
            indicator: 'Mycoplasma hominis (Mh)', value: 'Verdadero'));
        if (candidaAlbicans == 'true') {
          details.add(DetailsData(
              indicator: 'Candida albicans (Ca)', value: 'Verdadero'));
          result = 'Indeterminado';
          probability = ((2 - 1) / 2 * 100).toInt();
        } else {
          details.add(
              DetailsData(indicator: 'Candida albicans (Ca)', value: 'Falso'));
          result = 'VB-Positivo';
          probability = ((17 - 9) / 17 * 100).toInt();
        }
      } else {
        details.add(
            DetailsData(indicator: 'Mycoplasma hominis (Mh)', value: 'Falso'));
        if (ureaplasmaUrealyticum == 'true') {
          details.add(DetailsData(
              indicator: 'Ureaplasma urealyticum (Uu)', value: 'Verdadero'));
          result = 'Indeterminado';
          probability = 100;
        } else {
          details.add(DetailsData(
              indicator: 'Ureaplasma urealyticum (Uu)', value: 'Falso'));
          result = 'Normal';
          probability = ((82 - 21) / 82 * 100).toInt();
        }
      }
    }
  }
}
