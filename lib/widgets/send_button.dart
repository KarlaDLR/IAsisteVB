import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
    required this.text,
    required this.function,
  });

  final String text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
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
    );
  }
}
