import 'package:app/screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({super.key});

  @override
  State<Symptoms> createState() {
    return _Symptoms();
  }
}

class _Symptoms extends State<Symptoms> {
  final _formKey = GlobalKey<FormState>();
  String? _douches;
  String? _hypercholeteremia;
  String? _hypertension;
  String? _hypothyroidism;
  String? _hyperthyroidism;
  String? _std;
  String? _itching;
  String? _irritation;
  String? _discharge;
  String? _stink;
  String? _pain;
  String? _ardour;
  String? _dyspareunia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Antecedentes y Síntomas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              const Text(
                'Información general',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Edad'),
                ),
                style: GoogleFonts.inter(),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      int.tryParse(value) == null ||
                      int.tryParse(value)! <= 0) {
                    return 'Ingrese un número válido';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Estatura'),
                  hintText: 'cm',
                ),
                // validator: (value) { //Validar que sea una talla aceptada

                // },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Edad de inicio sexual'),
                ),
                //validator: (value) {}, Corroborar valor válido acorde a la entrada
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Semanas de gestación'),
                ),
                //validator: (value) {}, Corroborar valor válido acorde a la entrada
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Número de embarazos'),
                ),
                //validator: (value) {}, Corroborar valor válido acorde a la entrada
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Número de hijos'),
                ),
                //validator: (value) {}, Corroborar valor válido acorde a la entrada
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Número de abortos'),
                ),
                //validator: (value) {}, Corroborar valor válido acorde a la entrada
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Lavados vaginales'),
                  const Spacer(),
                  Column(
                    children: [
                      const Text('Sí'),
                      Radio<String>(
                        value: 'douches_true',
                        groupValue: _douches,
                        onChanged: (value) {
                          setState(() {
                            _douches = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text('No'),
                      Radio<String>(
                        value: 'douches_false',
                        groupValue: _douches,
                        onChanged: (value) {
                          setState(() {
                            _douches = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              //const SizedBox(height: 10),
              const Text(
                'Padecimientos',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Hipercoleteremia'),
                  const Spacer(),
                  Column(
                    children: [
                      const Text('Sí'),
                      Radio<String>(
                        value: 'hypercholeteremia_true',
                        groupValue: _hypercholeteremia,
                        onChanged: (value) {
                          setState(() {
                            _hypercholeteremia = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text('No'),
                      Radio<String>(
                        value: 'hypercholeteremia_false',
                        groupValue: _hypercholeteremia,
                        onChanged: (value) {
                          setState(() {
                            _hypercholeteremia = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Hipertensión'),
                  const Spacer(),
                  Radio<String>(
                    value: 'hypertension_true',
                    groupValue: _hypertension,
                    onChanged: (value) {
                      setState(() {
                        _hypertension = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'hypertension_false',
                    groupValue: _hypertension,
                    onChanged: (value) {
                      setState(() {
                        _hypertension = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Hipotiroidismo'),
                  const Spacer(),
                  Radio<String>(
                    value: 'hypothyroidism_true',
                    groupValue: _hypothyroidism,
                    onChanged: (value) {
                      setState(() {
                        _hypothyroidism = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'hypothyroidism_false',
                    groupValue: _hypothyroidism,
                    onChanged: (value) {
                      setState(() {
                        _hypothyroidism = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Hipertiroidismo'),
                  const Spacer(),
                  Radio<String>(
                    value: 'hyperthyroidism_true',
                    groupValue: _hyperthyroidism,
                    onChanged: (value) {
                      setState(() {
                        _hyperthyroidism = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'hyperthyroidism_false',
                    groupValue: _hyperthyroidism,
                    onChanged: (value) {
                      setState(() {
                        _hyperthyroidism = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('EST'),
                  const Spacer(),
                  Radio<String>(
                    value: 'std_true',
                    groupValue: _std,
                    onChanged: (value) {
                      setState(() {
                        _std = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'std_false',
                    groupValue: _std,
                    onChanged: (value) {
                      setState(() {
                        _std = value;
                      });
                    },
                  )
                ],
              ),
              const Text(
                'Síntomas',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Text('Comezón Genital'),
                  const Spacer(),
                  Column(
                    children: [
                      const Text('Sí'),
                      Radio<String>(
                        value: 'itching_true',
                        groupValue: _itching,
                        onChanged: (value) {
                          setState(() {
                            _itching = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Text('No'),
                      Radio<String>(
                        value: 'itching_false',
                        groupValue: _itching,
                        onChanged: (value) {
                          setState(() {
                            _itching = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Irritación'),
                  const Spacer(),
                  Radio<String>(
                    value: 'irritation_true',
                    groupValue: _irritation,
                    onChanged: (value) {
                      setState(() {
                        _irritation = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'irritation_false',
                    groupValue: _irritation,
                    onChanged: (value) {
                      setState(() {
                        _irritation = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Flujo Vaginal'),
                  const Spacer(),
                  Radio<String>(
                    value: 'discharge_true',
                    groupValue: _discharge,
                    onChanged: (value) {
                      setState(() {
                        _discharge = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'discharge_false',
                    groupValue: _discharge,
                    onChanged: (value) {
                      setState(() {
                        _discharge = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Mal Olor'),
                  const Spacer(),
                  Radio<String>(
                    value: 'stink_true',
                    groupValue: _stink,
                    onChanged: (value) {
                      setState(() {
                        _stink = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'stink_false',
                    groupValue: _stink,
                    onChanged: (value) {
                      setState(() {
                        _stink = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Dolor'),
                  const Spacer(),
                  Radio<String>(
                    value: 'pain_true',
                    groupValue: _pain,
                    onChanged: (value) {
                      setState(() {
                        _pain = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'pain_false',
                    groupValue: _pain,
                    onChanged: (value) {
                      setState(() {
                        _pain = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Ardor'),
                  const Spacer(),
                  Radio<String>(
                    value: 'ardour_true',
                    groupValue: _ardour,
                    onChanged: (value) {
                      setState(() {
                        _ardour = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'ardour_false',
                    groupValue: _ardour,
                    onChanged: (value) {
                      setState(() {
                        _ardour = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Dispareunia (Dolor en relaciones)'),
                  const Spacer(),
                  Radio<String>(
                    value: 'dyspareunia_true',
                    groupValue: _dyspareunia,
                    onChanged: (value) {
                      setState(() {
                        _dyspareunia = value;
                      });
                    },
                  ),
                  Radio<String>(
                    value: 'dyspareunia_false',
                    groupValue: _dyspareunia,
                    onChanged: (value) {
                      setState(() {
                        _dyspareunia = value;
                      });
                    },
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Results()),
                  );
                },
                child: const Text('ENVIAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
