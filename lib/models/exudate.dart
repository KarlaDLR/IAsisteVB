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

  void get determiningValues {
    if (mycoplasmaHominis != 'dont_know' &&
        candidaAlbicans != 'dont_know' &&
        ureaplasmaUrealyticum != 'dont_know') {
      if (mycoplasmaHominis == 'true') {
        if (candidaAlbicans == 'true') {
          result = 'Indeterminado';
          probability = ((2 - 1) / 2 * 100).toInt();
        } else {
          result = 'VB-Positivo';
          probability = ((17 - 9) / 17 * 100).toInt();
        }
      } else {
        if (ureaplasmaUrealyticum == 'true') {
          result = 'Indeterminado';
          probability = 100;
        } else {
          result = 'Normal';
          probability = ((82 - 21) / 82 * 100).toInt();
        }
      }
    }
  }
}
