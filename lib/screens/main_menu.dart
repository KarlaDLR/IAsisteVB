import 'package:app/screens/exudate.dart';
import 'package:app/screens/pcr_test.dart';
import 'package:app/screens/privacy_politics.dart';
import 'package:app/screens/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/option_button.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('IAsisteVB'),
      // ),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/IAsisteVB.png', width: 200),
                const SizedBox(height: 30),
                const Text(
                  '“Tu aliado en el diagnóstico de la Vaginosis Bacteriana”',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  '¿Qué deseas consultar?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Información',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                const OptionButton(
                  text: 'Nosotros',
                  screen: MainMenu(), //Change Screen!!
                ),
                const SizedBox(height: 15),
                const OptionButton(
                  text: 'Recomendaciones',
                  screen: MainMenu(), //Change Screen!!
                ),
                const SizedBox(height: 15),
                const OptionButton(
                  text: 'Políticas de uso',
                  screen: PrivacyPolitics(),
                ),
                const SizedBox(height: 10),
                Text(
                  'Diagnóstico clínico',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                const OptionButton(
                  text: 'Realizar Prueba de Síntomas',
                  screen: Symptoms(),
                ),
                const SizedBox(height: 10),
                Text(
                  'Diagnóstico de laboratorio',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                const OptionButton(
                  text: 'Realziar Prueba de Exudado',
                  screen: Exudate(),
                ),
                const SizedBox(height: 15),
                const OptionButton(
                  text: 'Realziar Prueba PCR',
                  screen: PcrTest(),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
