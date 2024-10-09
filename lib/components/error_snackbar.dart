import 'package:flutter/material.dart';

//Mensaje que sale en la parte inferior mencionando que hay datos incorrectos

class ErrorSnackbar {
  static void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Favor de ingresar todos los datos correctamente'),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
