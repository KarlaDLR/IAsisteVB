import 'package:iasistevb/models/details_data.dart';

class Symptoms {
  Symptoms({
    this.stink,
    this.ardour,
    this.itching,
    this.irritation,
    this.discharge,
  });

  String? stink;
  String? ardour;
  String? itching;
  String? irritation;
  String? discharge;

  String result = '';
  int probability = 0;
  List<DetailsData> details = [];

  int getProbability(int value1, int value2) {
    probability = ((value1 - value2) / value1 * 100).toInt();
    return probability;
  }

  void get determiningValues {
    if (stink == 'Verdadero') {
      if (itching == 'Verdadero') {
        result = 'VB-Positivo';
        getProbability(5, 0);
      } else {
        if (ardour == 'Verdadero') {
          result = 'VB-Negativo';
          getProbability(4, 1);
        } else {
          result = 'VB-Positivo';
          getProbability(2, 0);
        }
      }
    } else {
      if (irritation == 'Verdadero') {
        if (discharge == 'Verdadero') {
          result = 'VB-Negativo';
          getProbability(7, 1);
        } else {
          result = 'VB-Positivo';
          getProbability(2, 0);
        }
      } else {
        result = 'VB-Negativo';
        getProbability(102, 2);
      }
    }

    //Generación de la lista de indicadores

    details.add(DetailsData(indicator: 'Mal Olor', value: stink!));
    if (stink == 'Verdadero') {
      details.add(DetailsData(indicator: 'Comezón', value: itching!));
      details.add(DetailsData(indicator: 'Ardor', value: ardour!));
    } else {
      details.add(DetailsData(indicator: 'Irritación', value: irritation!));
      details.add(DetailsData(indicator: 'Flujo Vaginal', value: discharge!));
    }
  }
}
