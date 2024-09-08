import 'package:app/main.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PrivacyPolitics extends StatelessWidget {
  const PrivacyPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Políticas de privacidad',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(
                'Recopilación de datos:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Text(
                'Esta aplicación recopila datos específicos como síntomas, antecedentes médicos y edad. Estos datos son necesarios para alimentar nuestro modelo de Inteligencia Artificial que proporciona una probabilidad de padecimiento de la enfermedad.\nAdemás, los médicos deben ingresar su cédula profesional al iniciar la app por primera vez para validar su identidad y evitar la automedicación o autodiagnóstico.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
