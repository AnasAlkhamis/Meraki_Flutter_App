import 'package:flutter/material.dart';

import 'components/onbording/onbording.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoarding(
          'assets/images/pay.png',
          'We can change this text',
          'We can change this text',
          '''We can change this textWe can change this textWe can change this textWe can change this textWe can change this textWe can change this textWe can change this textWe can change this textWe can change this textWe can change this text.'''),
    );
  }
}
