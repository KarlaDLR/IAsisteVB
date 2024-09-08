import 'dart:math';

import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

final random = Random();

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() {
    return _Results();
  }
}

class _Results extends State<Results> {
  var porcent = random.nextInt(97) + 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'RESULTADOS',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'PROBABILIDAD ESTIMADA: ',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  '$porcent',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Esto debido a que usted presenta los siguientes sintomas: ',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
