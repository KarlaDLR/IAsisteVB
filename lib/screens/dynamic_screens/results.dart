import 'package:app/models/details_data.dart';
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
  String probability = '';
  List<DetailsData> details = [];

  void get results {
    if (widget.symptoms != null) {
      widget.symptoms!.determiningValues;
      result = widget.symptoms!.result;
      probability =
          'PROBABILIDAD ESTIMADA: ${widget.symptoms!.probability.toString()}%';
      details = widget.symptoms!.details;
    } else {
      if (widget.exudate != null) {
        widget.exudate!.determiningValues;
        result = widget.exudate!.result;
        probability =
            'PROBABILIDAD ESTIMADA: ${widget.exudate!.probability.toString()}%';
        details = widget.exudate!.details;
      } else {
        widget.pcr!.determiningValues;
        result = widget.pcr!.result;
        probability =
            'PROBABILIDAD ESTIMADA: ${widget.pcr!.probability.toString()}%';
        details = widget.pcr!.details;
      }
    }
    if (result == '') {
      details.add(DetailsData(
          indicator: '',
          value:
              'Se recomienda realizar más pruebas para obtener más información y ofrecer mayor precisión.'));
    }
  }

  @override
  Widget build(BuildContext context) {
    results;
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'RESULTADOS',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 5),
              Text(
                result,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 5),
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
              const SizedBox(height: 5),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (context, index) {
                      if (details[index].indicator != '') {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 40),
                          child: Row(
                            children: [
                              Text(details[index].indicator),
                              const Spacer(),
                              Text(details[index].value),
                            ],
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(details[index].value),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
