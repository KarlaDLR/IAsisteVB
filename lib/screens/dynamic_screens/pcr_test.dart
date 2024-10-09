import 'package:app/models/pcr.dart';
import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/components/custom_appbar.dart';
import 'package:app/components/error_snackbar.dart';
import 'package:app/widgets/decimal_input.dart';
import 'package:app/widgets/send_button.dart';
import 'package:flutter/material.dart';

class PcrTest extends StatefulWidget {
  const PcrTest({super.key});

  @override
  State<PcrTest> createState() {
    return _PcrTestState();
  }
}

class _PcrTestState extends State<PcrTest> {
  final _formKey = GlobalKey<FormState>();
  Pcr pcrData = Pcr();
  final List<String> acronyms = [
    'Av: Atopobium vaginalis',
    'Gv: Gardnerella vaginalis',
    'MT1: Megasphaera type 1',
    'BVAB2: BV-associated bacterium-2',
    'Lcrispatus: Lactobacilus Crispatus',
    'Liners: Lactobacilus iners',
    'Ljensenii: Lactobacilus jensenii',
  ];

  void _sendData() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Results(
            pcr: pcrData,
          ),
        ),
      );
      pcrData.details.clear();
    } else {
      ErrorSnackbar.show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            controller: ScrollController(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Prueba de PCR',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Indicadores presentes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                DecimalInput(
                  label: 'Av',
                  onSaved: (newValue) {
                    pcrData.atopobiumVaginalis = double.parse(newValue!);
                  },
                ),
                const DecimalInput(label: 'Gv'),
                DecimalInput(
                  label: 'MT1',
                  onSaved: (newValue) {
                    pcrData.megasphaeraType1 = double.parse(newValue!);
                  },
                ),
                DecimalInput(
                  label: 'BVAB2',
                  onSaved: (newValue) {
                    pcrData.bvAssociatedBacterium2 = double.parse(newValue!);
                  },
                ),
                const DecimalInput(label: 'Lcrispatus'),
                const DecimalInput(label: 'Liners'),
                const DecimalInput(label: 'Ljensenii'),
                const SizedBox(height: 10),
                Text(
                  'Siglas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: acronyms.map(
                        (acronym) {
                          return Text(acronym);
                        },
                      ).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SendButton(
                  text: 'ENVIAR',
                  function: _sendData,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
