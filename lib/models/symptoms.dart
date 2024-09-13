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

  void get determiningValues {
    if (stink != 'dont_know' &&
        dyspareunia != 'dont_know' &&
        ardour != 'dont_know') {
      if (stink == 'true') {
        if (dyspareunia == 'true') {
          result = 'Indeterminado';
          probability = ((3.09 - 0.09) / 3.09 * 100).toInt();
        } else {
          if (ardour == 'true') {
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
    }
  }
}
