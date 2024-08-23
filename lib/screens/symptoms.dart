import 'package:app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Symptoms();
  }
}

class _Symptoms extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.build(context),
    );
  }
}
