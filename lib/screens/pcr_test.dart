import 'package:app/screens/results.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PcrTest extends StatefulWidget {
  const PcrTest({super.key});

  @override
  State<PcrTest> createState() {
    return _PcrTest();
  }
}

class _PcrTest extends State<PcrTest> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Form(
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
                  //validator: (value) {}, Corroborar una edad válida
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Gv'),
                  ),
                  // validator: (value) { //Validar que sea una talla aceptada

                  // },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('MT1'),
                  ),
                  //validator: (value) {}, Corroborar valor válido acorde a la entrada
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('BVAB2'),
                  ),
                  //validator: (value) {}, Corroborar valor válido acorde a la entrada
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Lcrispatus'),
                  ),
                  //validator: (value) {}, Corroborar valor válido acorde a la entrada
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Liners'),
                  ),
                  //validator: (value) {}, Corroborar valor válido acorde a la entrada
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text('Ljensenii'),
                  ),
                  //validator: (value) {}, Corroborar valor válido acorde a la entrada
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
      ),
    );
  }
}
