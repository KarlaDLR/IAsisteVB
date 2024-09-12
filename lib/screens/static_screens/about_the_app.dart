import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AboutTheApp extends StatelessWidget {
  const AboutTheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sobre la app',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Aplicación de Inteligencia Artificial para el Diagnóstico de Vaginosis Bacteriana',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              const Text(
                'Esta aplicación móvil ha sido creada con el propósito de asistir a especialistas médicos en su toma de decisiones para el diagnóstico y manejo de la vaginosis bacteriana. A continuación, se detallan las funcionalidades clave que ofrece:',
              ),
              const SizedBox(height: 15),
              Text(
                'Procesamiento de Análisis Clínicos Específicos:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Los especialistas pueden ingresar los resultados de análisis de sangre, cultivos y pruebas de PCR relacionadas con la vaginosis bacteriana.',
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'La aplicación procesa estos datos para identificar patrones y proporcionar información relevante.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Cálculo y Visualización de la Probabilidad de Padecimiento de la Vaginosis Bacteriana:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Basándose en los análisis clínicos y otros datos ingresados, la aplicación calcula la probabilidad de que una paciente tenga vaginosis bacteriana.',
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Muestra esta probabilidad de manera clara para que el médico pueda tomar decisiones informadas.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Explicación Completa del Análisis Realizado:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'La aplicación proporciona detalles sobre cómo se llegó al cálculo de probabilidad.',
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Explica los marcadores específicos que llevaron a esa conclusión.',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
