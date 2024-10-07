import 'package:app/models/details_data.dart';

class Symptoms {
  Symptoms({
    this.stink,
    this.dyspareunia,
    this.ardour,
  });

  String? stink;
  String? dyspareunia;
  String? ardour;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  void get determiningValues {
    if (stink == 'Verdadero') {
      if (dyspareunia == 'Verdadero') {
        result = 'Indeterminado';
        probability = ((3.09 - 0.09) / 3.09 * 100).toInt();
      } else {
        if (ardour == 'Verdadero') {
          result = 'Normal';
          probability = ((4.12 - 2) / 4.12 * 100).toInt();
        } else {
          result = 'VB - Positivo';
          probability = ((3.09 - 1.09) / 3.09 * 100).toInt();
        }
      }
    } else {
      result = 'Normal';
      probability = ((95.71 - 33) / 95.71 * 100).toInt();
    }
    details.add(DetailsData(indicator: 'Mal Olor', value: stink!));
    details.add(DetailsData(indicator: 'Ardor', value: ardour!));
    details.add(DetailsData(indicator: 'Dispareunia', value: dyspareunia!));
  }
}
