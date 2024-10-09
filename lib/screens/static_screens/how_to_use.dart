import 'package:app/components/custom_appbar.dart';
import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({super.key});

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
                'Modo de uso',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Inicio de la aplicación:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 5),
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
                      'Al usar la aplicación por primera vez, haga clic en el botón de la parte inferior para iniciar la app.',
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
                      'Esto lo llevará a la ventana de autenticación, donde deberá ingresar su cédula profesional.',
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
                      'La cédula será validada para confirmar que es un médico. Una vez validado, se le proporcionará una contraseña para acceder a la aplicación.',
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
                      'En los siguientes inicios de sesión, solo aparecerá la ventana para ingresar la contraseña.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Menú principal:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 5),
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
                      'Una vez dentro de la aplicación, en el menú principal podrá visualizar las diferentes pruebas a realizar e información sobre la aplicación, como la ventana de “Nosotros” y las políticas de privacidad.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Realización de Pruebas:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 5),
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
                      'Al seleccionar una prueba, complete los campos requeridos y haga clic en “Enviar”.',
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
                      'La aplicación analizará la probabilidad de padecimiento de la enfermedad, mostrando el resultado con el porcentaje, los datos que llevaron a ese resultado y una nota final con recomendaciones, como realizar otra prueba.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Navegación:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 5),
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
                      'La flecha en la parte superior derecha regresa a la ventana anterior.',
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
                      'El logo de la aplicación regresa a la ventana principal.',
                      textAlign: TextAlign.justify,
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
