import 'package:app/screens/dynamic_screens/main_menu.dart';
import 'package:flutter/material.dart';

class CustomAppbar {
  static AppBar build(BuildContext context) {
    return AppBar(
      title: const Text('IAsisteVB'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        )
      ],
      leading: IconButton(
        onPressed: () {
          //Va a la ventana y elimina todas las ventanas del stack de ventanas.
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const MainMenu(),
            ),
            (Route<dynamic> route) => false,
          );
          //Manda al menú principal pero guarda todas las ventanas en el stack
          /* Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainMenu(),
            ),
          ); */
        },
        icon: Image.asset(
          'assets/images/IAsisteVB_logo.png',
        ),
      ),
    );
  }
}
