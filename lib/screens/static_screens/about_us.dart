import 'package:app/widgets/custom_appbar.dart';
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
                'Desarrollar soluciones tecnológicas avanzadas que utilicen inteligencia artificial y aprendizaje automático para mejorar el diagnóstico temprano y preciso de la Vaginosis Bacteriana, proporcionando a los médicos y especialistas en ginecología apoyo por medio de herramientas eficaces que promuevan la inclusión y equidad en la atención médica.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                'Visión:',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
              const Text(
                'Ser líderes en la innovación tecnológica dentro del sector salud, ofreciendo aplicaciones móviles que faciliten el diagnóstico médico y mejoren la calidad de vida de los pacientes. Aspiramos a expandir nuestras soluciones a otras áreas médicas, contribuyendo al avance de la medicina con tecnologías disruptivas de la industria 4.0.',
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
                ' Desarrollar una aplicación móvil Android que, utilizando técnicas de inteligencia artificial, mejore el diagnóstico médico temprano de la Vaginosis Bacteriana y proporcione información y acompañamiento a pacientes biológicamente femeninos y sexualmente activos.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Text(
                'Específicos:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              //Verificar alineación
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
                      'Diseñar una interfaz de usuario intuitiva y fácil de usar.',
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
                      'Identificar y seleccionar biomarcadores relevantes asociados con la enfermedad.',
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
                      'Entrenar modelos predictivos utilizando datos históricos para predecir la presencia de Vaginosis Bacteriana.',
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
                      'Integrar inteligencia artificial en la aplicación móvil para mejorar el diagnóstico médico.',
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
              ),
              const SizedBox(height: 10),
              Text(
                'Seguridad:',
                style: Theme.of(context).textTheme.titleMedium,
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
