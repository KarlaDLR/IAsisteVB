import 'package:flutter/material.dart';

//Widget para la generación de grupos de Radiobuttons.

class FormfieldRadio extends StatelessWidget {
  const FormfieldRadio({
    super.key,
    required this.title,
    required this.groupValue,
    required this.onChanged,
    this.header1,
    this.header2,
    this.header3,
    this.extra,
  });

  final String title;
  final String? groupValue;
  final ValueChanged<String?> onChanged;
  final String? header1;
  final String? header2;
  final String? header3;
  final bool? extra;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: (value) {
        if (value == null) {
          return "Seleccione una opción";
        }
        return null;
      },
      builder: (FormFieldState<String> state) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(title),
              const Spacer(),
              buildRadio('Verdadero', header1, state),
              buildRadio('Falso', header2, state),
              if (extra == true) buildRadio('Inseguro', header3, state),
            ],
          ),
          if (state.hasError) // Muestra el error si lo hay
            Text(
              state.errorText!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
        ],
      ),
    );
  }

  //Método para obtener el radio button
  Widget buildRadio(
      String value, String? header, FormFieldState<String> state) {
    return Column(
      children: [
        if (header != null) Text(header),
        Radio<String>(
          value: value,
          groupValue: state.value,
          onChanged: (newValue) {
            onChanged(newValue);
            state.didChange(newValue);
          },
        ),
      ],
    );
  }
}
