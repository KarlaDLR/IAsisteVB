import 'package:flutter/material.dart';

class IntegerInput extends StatelessWidget {
  const IntegerInput({
    super.key,
    required this.label,
    this.hintText,
    this.onSaved,
  });

  final String label;
  final String? hintText;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null ||
            value.isEmpty ||
            int.tryParse(value) == null ||
            int.tryParse(value)! < 0) {
          return 'Ingrese un número válido';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
