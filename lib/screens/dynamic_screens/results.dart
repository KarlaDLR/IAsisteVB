import 'package:app/models/exudate.dart';
import 'package:app/models/pcr.dart';
import 'package:app/models/symptoms.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({
    super.key,
    this.symptoms,
    this.exudate,
    this.pcr,
  });

  final Symptoms? symptoms;
  final Exudate? exudate;
  final Pcr? pcr;

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  String result = '';
  String details = '';
  String probability = '';

  void get results {
    if (widget.symptoms != null) {
      widget.symptoms!.determiningValues;
      result = widget.symptoms!.result;
      probability =
          'PROBABILIDAD ESTIMADA: ${widget.symptoms!.probability.toString()}%';
    } else {
      if (widget.exudate != null) {
        widget.exudate!.determiningValues;
        result = widget.exudate!.result;
        probability =
            'PROBABILIDAD ESTIMADA: ${widget.exudate!.probability.toString()}%';
      } else {
        widget.pcr!.determiningValues;
        result = widget.pcr!.result;
        probability =
            'PROBABILIDAD ESTIMADA: ${widget.pcr!.probability.toString()}%';
      }
    }
    if (result == '') {
      details =
          'Se recomienda realizar más pruebas para obtener más información y ofrecer mayor precisión.';
    }
  }

  @override
  Widget build(BuildContext context) {
    results;
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Scrollbar(
        child: SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text(
                  'RESULTADOS',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  result,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  probability,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 15),
                Text(
                  'Explicación del resultado obtenido:',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.justify,
                ),
                Text(details),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
