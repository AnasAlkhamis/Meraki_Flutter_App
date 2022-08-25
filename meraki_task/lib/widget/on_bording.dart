import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  String image;
  String title;
  String description;

  OnBoarding({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SafeArea(
          child: Image.asset(
            image,
            height: 300,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF353333)),
        ),
        const SizedBox(height: 28),
        Text(
          textAlign: TextAlign.center,
          description,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xFF6E6969)),
        ),
      ],
    );
  }
}
