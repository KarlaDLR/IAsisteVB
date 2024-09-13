class Pcr {
  Pcr({
    required this.megasphaeraType1,
    required this.bvAssociatedBacterium2,
    required this.atopobiumVaginalis,
  });

  final double megasphaeraType1;
  final double bvAssociatedBacterium2;
  final double atopobiumVaginalis;

  String result = '';
  int probability = 0;

  void get determiningValues {
    if (megasphaeraType1 <= 0) {
      result = 'Normal';
      probability = ((79 - 15) / 79 * 100).toInt();
    } else {
      if (bvAssociatedBacterium2 <= 25.77) {
        if (atopobiumVaginalis <= 0) {
          result = 'Indeterminado';
          probability = ((2 - 1) / 2 * 100).toInt();
        } else {
          result = 'VB-Positivo';
          probability = ((19 - 5) / 19 * 100).toInt();
        }
      } else {
        result = 'Indeterminado';
        probability = 100;
      }
    }
  }
}
