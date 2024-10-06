import 'package:app/screens/static_screens/about_the_app.dart';
import 'package:app/screens/static_screens/about_us.dart';
import 'package:app/screens/dynamic_screens/exudate_test.dart';
import 'package:app/screens/static_screens/how_to_use.dart';
import 'package:app/screens/dynamic_screens/pcr_test.dart';
import 'package:app/screens/static_screens/privacy_politics.dart';
import 'package:app/screens/dynamic_screens/symptoms_test.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/screen_button.dart';

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
          child: Scrollbar(
            child: SingleChildScrollView(
              controller: ScrollController(),
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
                    'Diagnóstico clínico',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Realizar Prueba de Síntomas',
                    screen: SymptomsTest(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Diagnóstico de laboratorio',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Realizar Prueba de Exudado',
                    screen: ExudateTest(),
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Realizar Prueba PCR',
                    screen: PcrTest(),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Información',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Nosotros',
                    screen: AboutUs(),
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Modo de uso',
                    screen: HowToUse(), //Change Screen!!
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Sobre la app',
                    screen: AboutTheApp(),
                  ),
                  const SizedBox(height: 10),
                  const ScreenButton(
                    text: 'Políticas de privacidad',
                    screen: PrivacyPolitics(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
