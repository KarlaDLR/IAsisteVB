import 'package:app/models/symptoms.dart';
import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
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
            symptoms: Symptoms(
                stink: _stink!, dyspareunia: _dyspareunia!, ardour: _ardour!),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Favor de ingresar todos los datos'),
          duration: Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

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
        child: Scrollbar(
          child: SingleChildScrollView(
            controller: ScrollController(),
            padding: const EdgeInsets.all(10),
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
                    label: Text('Edad de inicio sexual'),
                  ),
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
                    label: Text('Semanas de gestación'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Número de embarazos'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Número de hijos'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Número de abortos'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        int.tryParse(value) == null ||
                        int.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                FormField<String>(
                  validator: (value) {
                    if (_douches == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Lavados vaginales'),
                          const Spacer(),
                          Column(
                            children: [
                              const Text('Sí'),
                              Radio<String>(
                                value: 'Verdadero',
                                groupValue: _douches,
                                onChanged: (value) {
                                  setState(() {
                                    _douches = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No'),
                              Radio<String>(
                                value: 'Falso',
                                groupValue: _douches,
                                onChanged: (value) {
                                  setState(() {
                                    _douches = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          /* Column(
                            children: [
                              const Text('No sé'),
                              Radio<String>(
                                value: 'dont_know',
                                groupValue: _douches,
                                onChanged: (value) {
                                  setState(() {
                                    _douches = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                Text(
                  'Padecimientos',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                FormField<String>(
                  validator: (value) {
                    if (_hypercholeteremia == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Hipercoleteremia'),
                          const Spacer(),
                          Column(
                            children: [
                              const Text('Sí'),
                              Radio<String>(
                                value: 'Verdadero',
                                groupValue: _hypercholeteremia,
                                onChanged: (value) {
                                  setState(() {
                                    _hypercholeteremia = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No'),
                              Radio<String>(
                                value: 'Falso',
                                groupValue: _hypercholeteremia,
                                onChanged: (value) {
                                  setState(() {
                                    _hypercholeteremia = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No sé'),
                              Radio<String>(
                                value: 'Inseguro',
                                groupValue: _hypercholeteremia,
                                onChanged: (value) {
                                  setState(() {
                                    _hypercholeteremia = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_hypertension == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Hipertensión'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _hypertension,
                            onChanged: (value) {
                              setState(() {
                                _hypertension = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _hypertension,
                            onChanged: (value) {
                              setState(() {
                                _hypertension = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Inseguro',
                            groupValue: _hypertension,
                            onChanged: (value) {
                              setState(() {
                                _hypertension = value;
                                state.didChange(value);
                              });
                            },
                          ),
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_hypothyroidism == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Hipotiroidismo'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _hypothyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hypothyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _hypothyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hypothyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Inseguro',
                            groupValue: _hypothyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hypothyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_hyperthyroidism == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Hipertiroidismo'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _hyperthyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hyperthyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _hyperthyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hyperthyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Inseguro',
                            groupValue: _hyperthyroidism,
                            onChanged: (value) {
                              setState(() {
                                _hyperthyroidism = value;
                                state.didChange(value);
                              });
                            },
                          ),
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_std == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('EST'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _std,
                            onChanged: (value) {
                              setState(() {
                                _std = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _std,
                            onChanged: (value) {
                              setState(() {
                                _std = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Inseguro',
                            groupValue: _std,
                            onChanged: (value) {
                              setState(() {
                                _std = value;
                                state.didChange(value);
                              });
                            },
                          ),
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                Text(
                  'Síntomas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                FormField<String>(
                  validator: (value) {
                    if (_itching == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Comezón Genital'),
                          const Spacer(),
                          Column(
                            children: [
                              const Text('Sí'),
                              Radio<String>(
                                value: 'Verdadero',
                                groupValue: _itching,
                                onChanged: (value) {
                                  setState(() {
                                    _itching = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No'),
                              Radio<String>(
                                value: 'Falso',
                                groupValue: _itching,
                                onChanged: (value) {
                                  setState(() {
                                    _itching = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ),
                          /* Column(
                            children: [
                              const Text('No sé'),
                              Radio<String>(
                                value: 'dont_know',
                                groupValue: _itching,
                                onChanged: (value) {
                                  setState(() {
                                    _itching = value;
                                    state.didChange(value);
                                  });
                                },
                              )
                            ],
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_irritation == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Irritación'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _irritation,
                            onChanged: (value) {
                              setState(() {
                                _irritation = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _irritation,
                            onChanged: (value) {
                              setState(() {
                                _irritation = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /* Radio<String>(
                            value: 'dont_know',
                            groupValue: _irritation,
                            onChanged: (value) {
                              setState(() {
                                _irritation = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_discharge == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Flujo Vaginal'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _discharge,
                            onChanged: (value) {
                              setState(() {
                                _discharge = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _discharge,
                            onChanged: (value) {
                              setState(() {
                                _discharge = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /* Radio<String>(
                            value: 'dont_know',
                            groupValue: _discharge,
                            onChanged: (value) {
                              setState(() {
                                _discharge = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_stink == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Mal Olor'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _stink,
                            onChanged: (value) {
                              setState(() {
                                _stink = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _stink,
                            onChanged: (value) {
                              setState(() {
                                _stink = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /*  Radio<String>(
                            value: 'dont_know',
                            groupValue: _stink,
                            onChanged: (value) {
                              setState(() {
                                _stink = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_pain == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Dolor'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _pain,
                            onChanged: (value) {
                              setState(() {
                                _pain = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _pain,
                            onChanged: (value) {
                              setState(() {
                                _pain = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /* Radio<String>(
                            value: 'dont_know',
                            groupValue: _pain,
                            onChanged: (value) {
                              setState(() {
                                _pain = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_ardour == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Ardor'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _ardour,
                            onChanged: (value) {
                              setState(() {
                                _ardour = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _ardour,
                            onChanged: (value) {
                              setState(() {
                                _ardour = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /* Radio<String>(
                            value: 'dont_know',
                            groupValue: _ardour,
                            onChanged: (value) {
                              setState(() {
                                _ardour = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                FormField<String>(
                  validator: (value) {
                    if (_dyspareunia == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Dispareunia (Dolor en relaciones)'),
                          const Spacer(),
                          Radio<String>(
                            value: 'Verdadero',
                            groupValue: _dyspareunia,
                            onChanged: (value) {
                              setState(() {
                                _dyspareunia = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'Falso',
                            groupValue: _dyspareunia,
                            onChanged: (value) {
                              setState(() {
                                _dyspareunia = value;
                                state.didChange(value);
                              });
                            },
                          ),
                          /* Radio<String>(
                            value: 'dont_know',
                            groupValue: _dyspareunia,
                            onChanged: (value) {
                              setState(() {
                                _dyspareunia = value;
                                state.didChange(value);
                              });
                            },
                          ), */
                        ],
                      ),
                      if (state.hasError) // Muestra el error si lo hay
                        Text(
                          state.errorText ?? '',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: _sendData,
                  child: const Text('ENVIAR'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
