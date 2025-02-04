import 'package:iasistevb/models/details_data.dart';
import 'package:iasistevb/models/blood_pathogens.dart';
import 'package:iasistevb/models/pcr.dart';
import 'package:iasistevb/models/symptoms.dart';
import 'package:iasistevb/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({
    super.key,
    this.symptoms,
    this.blood,
    this.pcr,
  });

  final Symptoms? symptoms;
  final BloodPathogens? blood;
  final Pcr? pcr;

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  String result = '';
  int probability = 0;

  List<DetailsData> details = [];

  void get results {
    if (widget.symptoms != null) {
      widget.symptoms!.determiningValues;
      result = widget.symptoms!.result;
      probability = widget.symptoms!.probability;
      details = widget.symptoms!.details;
    } else {
      if (widget.blood != null) {
        widget.blood!.determiningValues;
        result = widget.blood!.result;
        probability = widget.blood!.probability;
        details = widget.blood!.details;
      } else {
        widget.pcr!.determiningValues;
        result = widget.pcr!.result;
        probability = widget.pcr!.probability;
        details = widget.pcr!.details;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    results;
    return Scaffold(
      appBar: CustomAppBar.build(context),
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
                'PROBABILIDAD ESTIMADA: $probability%',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 15),
              Text(
                'Indicadores del resultado obtenido:',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (context, index) {
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
