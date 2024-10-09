import 'package:app/models/exudate.dart';
import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/components/custom_appbar.dart';
import 'package:app/components/error_snackbar.dart';
import 'package:app/widgets/formfield_radio.dart';
import 'package:app/widgets/send_button.dart';
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
  Exudate exudateData = Exudate();
  String? _ct;
  String? _hsv;
  String? _mg;
  String? _up;
  String? _tv;
  String? _sa;
  String? _hpv;
  final List<String> acronyms = [
    'Ct: Chlamydia trachomatis',
    'HSV: Herpes simplex virus',
    'Mg: Mycoplasma genitalium',
    'Mh: Mycoplasma hominis',
    'Up: Ureaplasma parvum',
    'Uu: Ureaplasma urealyticum',
    'Ca: Candida albicans',
    'Tv: Trichomonas vaginalis',
    'Sa: Staphylococcus aureus',
    'HPV: Human papillomavirus',
  ];

  void _sendData() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Results(
            exudate: exudateData,
          ),
        ),
      );
      exudateData.details.clear();
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
                  'Exudado',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Indicadores presentes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                FormfieldRadio(
                  title: 'Ct',
                  groupValue: _ct,
                  onChanged: (value) {
                    setState(() {
                      _ct = value;
                    });
                  },
                  header1: 'Sí',
                  header2: 'No',
                ),
                FormfieldRadio(
                    title: 'HSV',
                    groupValue: _hsv,
                    onChanged: (value) {
                      setState(() {
                        _hsv = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'Mg',
                    groupValue: _mg,
                    onChanged: (value) {
                      setState(() {
                        _mg = value;
                      });
                    }),
                FormfieldRadio(
                  title: 'Mh',
                  groupValue: exudateData.mycoplasmaHominis,
                  onChanged: (value) {
                    setState(() {
                      exudateData.mycoplasmaHominis = value;
                    });
                  },
                ),
                FormfieldRadio(
                    title: 'Up',
                    groupValue: _up,
                    onChanged: (value) {
                      setState(() {
                        _up = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'Uu',
                    groupValue: exudateData.ureaplasmaUrealyticum,
                    onChanged: (value) {
                      setState(() {
                        exudateData.ureaplasmaUrealyticum = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'Ca',
                    groupValue: exudateData.candidaAlbicans,
                    onChanged: (value) {
                      setState(() {
                        exudateData.candidaAlbicans = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'Tv',
                    groupValue: _tv,
                    onChanged: (value) {
                      setState(() {
                        _tv = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'Sa',
                    groupValue: _sa,
                    onChanged: (value) {
                      setState(() {
                        _sa = value;
                      });
                    }),
                FormfieldRadio(
                    title: 'HPV',
                    groupValue: _hpv,
                    onChanged: (value) {
                      setState(() {
                        _hpv = value;
                      });
                    }),
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
                const SizedBox(height: 20),
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
