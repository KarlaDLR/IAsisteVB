import 'package:flutter/material.dart';

//Widget que envía a la ventana especificada. Éste es responsivo al tamaño de pantalla.

class ScreenButton extends StatelessWidget {
  const ScreenButton({
    super.key,
    required this.text,
    required this.screen,
  });

  final String text;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ));
        },
        child: Stack(
          children: [
            Text(
              text,
              style: TextStyle(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = const Color.fromARGB(255, 109, 31, 44),
              ),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
