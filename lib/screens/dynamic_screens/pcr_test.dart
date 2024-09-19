import 'package:app/models/pcr.dart';
import 'package:app/screens/dynamic_screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PcrTest extends StatefulWidget {
  const PcrTest({super.key});

  @override
  State<PcrTest> createState() {
    return _PcrTestState();
  }
}

class _PcrTestState extends State<PcrTest> {
  final _formKey = GlobalKey<FormState>();
  double? _mt1;
  double? _bvab2;
  double? _av;

  void _sendData() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Results(
            pcr: Pcr(
                megasphaeraType1: _mt1!,
                bvAssociatedBacterium2: _bvab2!,
                atopobiumVaginalis: _av!),
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
                  'Prueba de PCR',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'Indicadores presentes',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Av'),
                  ),
                  style: GoogleFonts.inter(),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _av = double.parse(newValue!);
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Gv'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('MT1'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _mt1 = double.parse(newValue!);
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('BVAB2'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _bvab2 = double.parse(newValue!);
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Lcrispatus'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Liners'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Ljensenii'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        double.tryParse(value) == null ||
                        double.tryParse(value)! < 0) {
                      return 'Ingrese un número válido';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
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
                        Text('Av: Atopobium vaginalis'),
                        Text('Gv: Gardnerella vaginalis'),
                        Text('MT1: Megasphaera type 1'),
                        Text('BVAB2: BV-associated bacterium-2'),
                        Text('Lcrispatus: Lactobacilus Crispatus'),
                        Text('Liners: Lactobacilus iners'),
                        Text('Ljensenii: Lactobacilus jensenii'),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
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
