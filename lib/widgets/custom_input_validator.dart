import 'package:flutter/material.dart';

class CustomInputValidator extends StatelessWidget {
  const CustomInputValidator(
      {super.key,
      required this.label,
      this.hintText,
      required this.validator,
      this.onSaved});

  final String label;
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}
