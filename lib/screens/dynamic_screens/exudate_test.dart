import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ExudateTest extends StatefulWidget {
  const ExudateTest({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExudateTestState();
  }
}

class _ExudateTestState extends State<ExudateTest> {
  final _formKey = GlobalKey<FormState>();
  String? _ct;
  String? _hsv;
  String? _mg;
  String? _mh;
  String? _up;
  String? _uu;
  String? _ca;
  String? _tv;
  String? _sa;
  String? _hpv;

  void _sendData() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Results()),
      );
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
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Exudado',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Indicadores presentes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                FormField<String>(
                  validator: (value) {
                    if (_ct == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Ct'),
                          const Spacer(),
                          Column(
                            children: [
                              const Text('Sí'),
                              Radio<String>(
                                value: 'ct_true',
                                groupValue: _ct,
                                onChanged: (value) {
                                  setState(() {
                                    _ct = value;
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No'),
                              Radio<String>(
                                value: 'ct_false',
                                groupValue: _ct,
                                onChanged: (value) {
                                  setState(() {
                                    _ct = value;
                                  });
                                },
                              )
                            ],
                          ),
                          Column(
                            children: [
                              const Text('No sé'),
                              Radio<String>(
                                value: 'ct_dont_know',
                                groupValue: _ct,
                                onChanged: (value) {
                                  setState(() {
                                    _ct = value;
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
                    if (_hsv == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('HSV'),
                          const Spacer(),
                          Radio<String>(
                            value: 'hsv_true',
                            groupValue: _hsv,
                            onChanged: (value) {
                              setState(() {
                                _hsv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'hsv_false',
                            groupValue: _hsv,
                            onChanged: (value) {
                              setState(() {
                                _hsv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'hsv_dont_know',
                            groupValue: _hsv,
                            onChanged: (value) {
                              setState(() {
                                _hsv = value;
                              });
                            },
                          )
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
                    if (_mg == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Mg'),
                          const Spacer(),
                          Radio<String>(
                            value: 'mg_true',
                            groupValue: _mg,
                            onChanged: (value) {
                              setState(() {
                                _mg = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'mg_false',
                            groupValue: _mg,
                            onChanged: (value) {
                              setState(() {
                                _mg = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'mg_dont_know',
                            groupValue: _mg,
                            onChanged: (value) {
                              setState(() {
                                _mg = value;
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
                    if (_mh == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Mh'),
                          const Spacer(),
                          Radio<String>(
                            value: 'mh_true',
                            groupValue: _mh,
                            onChanged: (value) {
                              setState(() {
                                _mh = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'mh_false',
                            groupValue: _mh,
                            onChanged: (value) {
                              setState(() {
                                _mh = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'mh_dont_know',
                            groupValue: _mh,
                            onChanged: (value) {
                              setState(() {
                                _mh = value;
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
                    if (_up == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Up'),
                          const Spacer(),
                          Radio<String>(
                            value: 'up_true',
                            groupValue: _up,
                            onChanged: (value) {
                              setState(() {
                                _up = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'up_false',
                            groupValue: _up,
                            onChanged: (value) {
                              setState(() {
                                _up = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'up_dont_know',
                            groupValue: _up,
                            onChanged: (value) {
                              setState(() {
                                _up = value;
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
                    if (_uu == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Uu'),
                          const Spacer(),
                          Radio<String>(
                            value: 'uu_true',
                            groupValue: _uu,
                            onChanged: (value) {
                              setState(() {
                                _uu = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'uu_false',
                            groupValue: _uu,
                            onChanged: (value) {
                              setState(() {
                                _uu = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'uu_dont_know',
                            groupValue: _uu,
                            onChanged: (value) {
                              setState(() {
                                _uu = value;
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
                    if (_ca == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Ca'),
                          const Spacer(),
                          Radio<String>(
                            value: 'ca_true',
                            groupValue: _ca,
                            onChanged: (value) {
                              setState(() {
                                _ca = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'ca_false',
                            groupValue: _ca,
                            onChanged: (value) {
                              setState(() {
                                _ca = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'ca_dont_know',
                            groupValue: _ca,
                            onChanged: (value) {
                              setState(() {
                                _ca = value;
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
                    if (_tv == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Tv'),
                          const Spacer(),
                          Radio<String>(
                            value: 'tv_true',
                            groupValue: _tv,
                            onChanged: (value) {
                              setState(() {
                                _tv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'tv_false',
                            groupValue: _tv,
                            onChanged: (value) {
                              setState(() {
                                _tv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'tv_dont_know',
                            groupValue: _tv,
                            onChanged: (value) {
                              setState(() {
                                _tv = value;
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
                    if (_sa == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Sa'),
                          const Spacer(),
                          Radio<String>(
                            value: 'sa_true',
                            groupValue: _sa,
                            onChanged: (value) {
                              setState(() {
                                _sa = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'sa_false',
                            groupValue: _sa,
                            onChanged: (value) {
                              setState(() {
                                _sa = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'sa_dont_know',
                            groupValue: _sa,
                            onChanged: (value) {
                              setState(() {
                                _sa = value;
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
                    if (_hpv == null) {
                      return "Seleccione una opción";
                    }
                    return null;
                  },
                  builder: (FormFieldState<String> state) => Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('HPV'),
                          const Spacer(),
                          Radio<String>(
                            value: 'hpv_true',
                            groupValue: _hpv,
                            onChanged: (value) {
                              setState(() {
                                _hpv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'hpv_false',
                            groupValue: _hpv,
                            onChanged: (value) {
                              setState(() {
                                _hpv = value;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'hpv_dont_know',
                            groupValue: _hpv,
                            onChanged: (value) {
                              setState(() {
                                _hpv = value;
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
                  'Siglas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ct: Chlamydia trachomatis'),
                        Text('HSV: Herpes simplex virus'),
                        Text('Mg: Mycoplasma genitalium'),
                        Text('Mh: Mycoplasma hominis'),
                        Text('Up: Ureaplasma parvum'),
                        Text('Uu: Ureaplasma urealyticum'),
                        Text('Ca: Candida albicans'),
                        Text('Tv: Trichomonas vaginalis'),
                        Text('Sa: Staphylococcus aureus'),
                        Text('HPV: Human papillomavirus'),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _sendData, //() {
                  //    Navigator.push(
                  //      context,
                  //      MaterialPageRoute(builder: (context) => const Results()),
                  //    );
                  // },
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
