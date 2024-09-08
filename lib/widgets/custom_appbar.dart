import 'package:app/screens/main_menu.dart';
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainMenu(),
            ),
          );
        },
        icon: Image.asset(
          'assets/images/IAsisteVB.png',
        ),
      ),
    );
  }
}
