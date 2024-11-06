import 'package:iasistevb/models/symptoms.dart';
import 'package:iasistevb/screens/dynamic_screens/results.dart';
import 'package:iasistevb/components/custom_app_bar.dart';
import 'package:iasistevb/components/error_snack_bar.dart';
import 'package:iasistevb/widgets/custom_input_validator.dart';
import 'package:iasistevb/widgets/form_field_radio.dart';
import 'package:iasistevb/widgets/integer_input.dart';
import 'package:iasistevb/widgets/send_button.dart';
import 'package:flutter/material.dart';

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
      //_formKey.currentState!.save(); //Usar método onSave() para los otros campos TextField
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
      ErrorSnackBar.show(context);
    }
  }

  Symptoms symptomsData = Symptoms();
  String? _douches;
  String? _hypercholeteremia;
  String? _hypertension;
  String? _hypothyroidism;
  String? _hyperthyroidism;
  String? _std;
  String? _dyspareunia;
  String? _pain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context),
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
                FormFieldRadio(
                  title: 'Lavados vaginales',
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
                FormFieldRadio(
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
                FormFieldRadio(
                  title: 'Hipertensión',
                  groupValue: _hypertension,
                  onChanged: (value) {
                    setState(() {
                      _hypertension = value;
                    });
                  },
                  extra: true,
                ),
                FormFieldRadio(
                  title: 'Hipotiroidismo',
                  groupValue: _hypothyroidism,
                  onChanged: (value) {
                    setState(() {
                      _hypothyroidism = value;
                    });
                  },
                  extra: true,
                ),
                FormFieldRadio(
                  title: 'Hipertiroidismo',
                  groupValue: _hyperthyroidism,
                  onChanged: (value) {
                    setState(() {
                      _hyperthyroidism = value;
                    });
                  },
                  extra: true,
                ),
                FormFieldRadio(
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
                FormFieldRadio(
                  title: 'Comezón Genital',
                  groupValue: symptomsData.itching,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.itching = value;
                    });
                  },
                  header1: 'Sí',
                  header2: 'No',
                ),
                FormFieldRadio(
                  title: 'Irritación',
                  groupValue: symptomsData.irritation,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.irritation = value;
                    });
                  },
                ),
                FormFieldRadio(
                  title: 'Flujo Vaginal',
                  groupValue: symptomsData.discharge,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.discharge = value;
                    });
                  },
                ),
                FormFieldRadio(
                  title: 'Mal olor',
                  groupValue: symptomsData.stink,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.stink = value;
                    });
                  },
                ),
                FormFieldRadio(
                  title: 'Dolor',
                  groupValue: _pain,
                  onChanged: (value) {
                    setState(() {
                      _pain = value;
                    });
                  },
                ),
                FormFieldRadio(
                  title: 'Ardor',
                  groupValue: symptomsData.ardour,
                  onChanged: (value) {
                    setState(() {
                      symptomsData.ardour = value;
                    });
                  },
                ),
                FormFieldRadio(
                  title: 'Dispareunia (Dolor en las relaciones)',
                  groupValue: _dyspareunia,
                  onChanged: (value) {
                    setState(() {
                      _dyspareunia = value;
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
