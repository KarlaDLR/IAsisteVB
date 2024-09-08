import 'package:app/screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Exudate extends StatefulWidget {
  const Exudate({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Exudate();
  }
}

class _Exudate extends State<Exudate> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Exudado',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              const Text(
                'Indicadores presentes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
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
                ],
              ),
              Row(
                children: [
                  const Text('HSV'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'hsv_true',
                        groupValue: _hsv,
                        onChanged: (value) {
                          setState(() {
                            _hsv = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'hsv_false',
                        groupValue: _hsv,
                        onChanged: (value) {
                          setState(() {
                            _hsv = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Mg'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'mg_true',
                        groupValue: _mg,
                        onChanged: (value) {
                          setState(() {
                            _mg = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'mg_false',
                        groupValue: _mg,
                        onChanged: (value) {
                          setState(() {
                            _mg = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Mh'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'mh_true',
                        groupValue: _mh,
                        onChanged: (value) {
                          setState(() {
                            _mh = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'mh_false',
                        groupValue: _mh,
                        onChanged: (value) {
                          setState(() {
                            _mh = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Up'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'up_true',
                        groupValue: _up,
                        onChanged: (value) {
                          setState(() {
                            _up = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'up_false',
                        groupValue: _up,
                        onChanged: (value) {
                          setState(() {
                            _up = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Uu'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'uu_true',
                        groupValue: _uu,
                        onChanged: (value) {
                          setState(() {
                            _uu = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'uu_false',
                        groupValue: _uu,
                        onChanged: (value) {
                          setState(() {
                            _uu = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Ca'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'ca_true',
                        groupValue: _ca,
                        onChanged: (value) {
                          setState(() {
                            _ca = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'ca_false',
                        groupValue: _ca,
                        onChanged: (value) {
                          setState(() {
                            _ca = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Tv'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'tv_true',
                        groupValue: _tv,
                        onChanged: (value) {
                          setState(() {
                            _tv = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'tv_false',
                        groupValue: _tv,
                        onChanged: (value) {
                          setState(() {
                            _tv = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Sa'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'sa_true',
                        groupValue: _sa,
                        onChanged: (value) {
                          setState(() {
                            _sa = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'sa_false',
                        groupValue: _sa,
                        onChanged: (value) {
                          setState(() {
                            _sa = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('HPV'),
                  const Spacer(),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'hpv_true',
                        groupValue: _hpv,
                        onChanged: (value) {
                          setState(() {
                            _hpv = value;
                          });
                        },
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Radio<String>(
                        value: 'hpv_false',
                        groupValue: _hpv,
                        onChanged: (value) {
                          setState(() {
                            _hpv = value;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                'Siglas',
                style: TextStyle(fontWeight: FontWeight.bold),
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
