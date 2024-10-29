import 'package:iasistevb/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          controller: ScrollController(),
          child: Column(
            children: [
              Text(
                'Nosotros',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Misión:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Text(
                'Desarrollar herramientas tecnológicas de vanguardia que asistan a los profesionales de la salud en decisiones críticas, mejorando la precisión diagnóstica en la medicina y contribuyendo al bienestar de las pacientes mediante inteligencia artificial y aprendizaje automático.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                'Visión:',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Ser líderes en soluciones tecnológicas para la salud femenina, estableciendo nuevos estándares en el diagnóstico y tratamiento de la Vaginosis Bacteriana y expandiendo nuestras capacidades a otras patologías relevantes.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Text(
                'Objetivos:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'General:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              const Text(
                'Desarrollar una aplicación móvil Android y iOS que, utilizando técnicas de inteligencia artificial, explote modelos de aprendizaje automático para mejorar el diagnóstico médico temprano de la Vaginosis Bacteriana y dar explicación, acompañamiento e información referente a la enfermedad a pacientes biológicamente femeninos infectados y sexualmente activos.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                'Específicos:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.label_important,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Diseñar una interfaz de usuario fácil de usar para la aplicación móvil en una aplicación de prototipado.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.label_important,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Identificar y seleccionar biomarcadores relevantes que puedan estar asociados con la condición.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.label_important,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Entrenar el modelo utilizando datos históricos para predecir la presencia de Vaginosis Bacteriana en nuevos pacientes. ',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.label_important,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Desarrollar la aplicación móvil con la integración de inteligencia artificial para el mejoramiento del diagnóstico.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Valores:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Innovación:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text(
                'Comprometidos con el desarrollo de soluciones tecnológicas avanzadas.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                'Precisión:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text(
                'Enfocados en proporcionar diagnósticos precisos y confiables.',
                textAlign: TextAlign.justify,
              ),
              Text(
                'Inclusión:',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Promovemos la equidad en la atención médica.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                'Seguridad:',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Garantizamos la protección de los datos y la privacidad de nuestros usuarios.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Text(
                'Responsabilidad:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Text(
                'Compromiso con la ética y la responsabilidad en el manejo de datos sensibles y en la provisión de diagnósticos médicos.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
