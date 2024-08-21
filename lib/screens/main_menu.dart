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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/IAsisteVB.png', width: 200),
                const SizedBox(height: 30),
                const Text(
                  '“Tu aliado en el diagnóstico de la Vaginosis Bacteriana”',
                ),
                const SizedBox(height: 20),
                const Text(
                  '¿Qué deseas consultar?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Información',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                OptionButton(
                  text: 'Nosotros',
                  onTap: () {}, //Change Screen
                ),
                const SizedBox(height: 15),
                OptionButton(
                  text: 'Recomendaciones',
                  onTap: () {}, //Change Screen
                ),
                const SizedBox(height: 15),
                OptionButton(
                  text: 'Tipos de Diagnósticos',
                  onTap: () {}, //Change Screen
                ),
                const SizedBox(height: 10),
                Text(
                  'Diagnóstico clínico',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                OptionButton(
                  text: 'Realizar Prueba de Síntomas',
                  onTap: () {}, //Change Screen
                ),
                const SizedBox(height: 10),
                Text(
                  'Diagnóstico de laboratorio',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                OptionButton(
                  text: 'Realziar Prueba de Exudado',
                  onTap: () {}, //Change Screen
                ),
                const SizedBox(height: 15),
                OptionButton(
                  text: 'Realziar Prueba PCR',
                  onTap: () {}, //Change Screen
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
