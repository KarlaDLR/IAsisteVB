import 'package:app/models/details_data.dart';

class Symptoms {
  Symptoms({
    required this.stink,
    required this.dyspareunia,
    required this.ardour,
  });

  final String stink;
  final String dyspareunia;
  final String ardour;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  void get determiningValues {
    if (stink != 'dont_know' &&
        dyspareunia != 'dont_know' &&
        ardour != 'dont_know') {
      if (stink == 'true') {
        details.add(DetailsData(indicator: 'Mal olor', value: 'Verdadero'));
        if (dyspareunia == 'true') {
          result = 'Indeterminado';
          probability = ((3.09 - 0.09) / 3.09 * 100).toInt();
          details
              .add(DetailsData(indicator: 'Dispareunia', value: 'Verdadero'));
        } else {
          details.add(DetailsData(indicator: 'Dispareunia', value: 'Falso'));
          if (ardour == 'true') {
            result = 'Normal';
            probability = ((4.12 - 2) / 4.12 * 100).toInt();
            details.add(DetailsData(indicator: 'Ardor', value: 'Verdadero'));
          } else {
            result = 'VB - Positivo';
            probability = ((3.09 - 1.09) / 3.09 * 100).toInt();
            details.add(DetailsData(indicator: 'Ardor', value: 'Falso'));
          }
        }
      } else {
        result = 'Normal';
        probability = ((95.71 - 33) / 95.71 * 100).toInt();
        details.add(DetailsData(indicator: 'Mal olor', value: 'Falso'));
      }
    }
  }
}
