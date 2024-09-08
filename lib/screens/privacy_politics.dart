import 'package:app/main.dart';
import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PrivacyPolitics extends StatelessWidget {
  const PrivacyPolitics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Políticas de privacidad',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text(
              'Recopilación de datos:',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
