import 'package:app/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class PrivacyPolitics extends StatelessWidget {
  const PrivacyPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Scrollbar(
        child: SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Políticas de privacidad',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 15),
                Text(
                  'Recopilación de datos:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Esta aplicación recopila datos específicos como síntomas, antecedentes médicos y edad. Estos datos son necesarios para alimentar nuestro modelo de Inteligencia Artificial que proporciona una probabilidad de padecimiento de la enfermedad.\nAdemás, los médicos deben ingresar su cédula profesional al iniciar la app por primera vez para validar su identidad y evitar la automedicación o autodiagnóstico.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'Uso de datos:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Los datos recopilados se utilizan únicamente para el propósito declarado, es decir, para proporcionar un diagnóstico preliminar de la vaginosis bacteriana. No se utilizan para ningún otro fin.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'Almacenamiento de datos:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Valoramos la privacidad de nuestros usuarios. Por lo tanto, los datos proporcionados no se almacenan. Se eliminan inmediatamente después de su uso.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'Compartir datos:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Nos comprometemos a no compartir los datos recopilados con terceros.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'Seguridad de los datos:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Tomamos todas las medidas necesarias para proteger los datos de nuestros usuarios durante el proceso de diagnóstico.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'Información de contacto:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Text(
                  'Si tienes alguna pregunta o preocupación sobre nuestra política de privacidad, no dudes en contactarnos.',
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 15),
                Text(
                  'IAsisteVB_dudas@gmail.com',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
