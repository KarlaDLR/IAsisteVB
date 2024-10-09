import 'package:app/models/symptoms.dart';
import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/components/custom_appbar.dart';
import 'package:app/components/error_snackbar.dart';
import 'package:app/widgets/custom_input_validator.dart';
import 'package:app/widgets/formfield_radio.dart';
import 'package:app/widgets/integer_input.dart';
import 'package:app/widgets/send_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SymptomsTest extends StatefulWidget {
  const SymptomsTest({super.key});

  @override
  State<SymptomsTest> createState() {
    return _SymptomsTestState();
  }
}

class _SymptomsTestState extends State<SymptomsTest> {
  final _formKey = GlobalKey<FormState>();
  void _sendData() {
    if (_formKey.currentState!.validate()) {
      //_formKey.currentState!.save(); Usar método onSave() para los otros campos TextField
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Results(
            symptoms: symptomsData,
          ),
        ),
      );
      symptomsData.details.clear();
    } else {
      ErrorSnackbar.show(context);
    }
  }

  Symptoms symptomsData = Symptoms();
  String? _douches;
  String? _hypercholeteremia;
  String? _hypertension;
  String? _hypothyroidism;
  String? _hyperthyroidism;
  String? _std;
  String? _itching;
  String? _irritation;
  String? _discharge;
  String? _pain;

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
                  'Antecedentes y Síntomas',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Información general',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                CustomInputValidator(
                    label: 'Edad',
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          int.tryParse(value) == null ||
                          int.tryParse(value)! <= 0) {
                        return 'Ingrese un número válido';
                      }
                      return null;
                    }),
                CustomInputValidator(
                    label: 'Estatura',
                    hintText: 'cm',
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          int.tryParse(value) == null ||
                          int.tryParse(value)! <= 0) {
                        return 'Ingrese un número válido';
                      }
                      return null;
                    }),
                const IntegerInput(label: 'Edad de inicio sexual'),
                const IntegerInput(label: 'Semanas de gestación'),
                const IntegerInput(label: 'Número de embarazos'),
                const IntegerInput(label: 'Número de hijos'),
                const IntegerInput(label: 'Número de abortos'),
                const SizedBox(height: 10),
                FormfieldRadio(
                  title: 'Lavados vafinales',
                  groupValue: _douches,
                  onChanged: (value) {
                    setState(() {
                      _douches = value;
                    });
                  },
                  header1: 'Sí',
                  header2: 'No',
                ),
                Text(
                  'Padecimientos',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                FormfieldRadio(
                  title: 'Hipercoleteremia',
                  groupValue: _hypercholeteremia,
                  onChanged: (value) {
                    setState(() {
                      _hypercholeteremia = value;
                    });
                  },
                  header1: 'Sí',
                  header2: 'No',
                  header3: 'No sé',
                  extra: true,
                ),
                FormfieldRadio(
                  title: 'Hipertensión',
                  groupValue: _hypertension,
                  onChanged: (value) {
                    setState(() {
                      _hypertension = value;
                    });
                  },
                  extra: true,
                ),
                FormfieldRadio(
                  title: 'Hipotiroidismo',
                  groupValue: _hypothyroidism,
                  onChanged: (value) {
                    setState(() {
                      _hypothyroidism = value;
                    });
                  },
                  extra: true,
                ),
                FormfieldRadio(
                  title: 'Hipertiroidismo',
                  groupValue: _hyperthyroidism,
                  onChanged: (value) {
                    setState(() {
                      _hyperthyroidism = value;
                    });
                  },
                  extra: true,
                ),
                FormfieldRadio(
                  title: 'EST',
                  groupValue: _std,
                  onChanged: (value) {
                    setState(() {
                      _std = value;
                    });
                  },
                  extra: true,
                ),
                Text(
                  'Síntomas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                FormfieldRadio(
                  title: 'Comezón Genital',
                  groupValue: _itching,
                  onChanged: (value) {
                    setState(() {
                      _itching = value;
                    });
                  },
                  header1: 'Sí',
                  header2: 'No',
                ),
                FormfieldRadio(
                  title: 'Irritación',
                  groupValue: _irritation,
                  onChanged: (value) {
                    setState(() {
                      _irritation = value;
                    });
                  },
                ),
                FormfieldRadio(
                  title: 'Flujo Vaginal',
                  groupValue: _discharge,
                  onChanged: (value) {
                    setState(() {
                      _discharge = value;
                    });
                  },
                ),
                FormfieldRadio(
                  title: 'Mal olor',
                  groupValue: symptomsData.stink,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.stink = value;
                    });
                  },
                ),
                FormfieldRadio(
                  title: 'Dolor',
                  groupValue: _pain,
                  onChanged: (value) {
                    setState(() {
                      _pain = value;
                    });
                  },
                ),
                FormfieldRadio(
                  title: 'Ardor',
                  groupValue: symptomsData.ardour,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.ardour = value;
                    });
                  },
                ),
                FormfieldRadio(
                  title: 'Dispareunia (Dolor en las relaciones)',
                  groupValue: symptomsData.dyspareunia,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.dyspareunia = value;
                    });
                  },
                ),
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
