import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String label;
  String hint;
  CustomTextField({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Color(0xFF98CF98), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(color: Color(0xFF98CF98), width: 2)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xFF98CF98), width: 2),
        ),
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFF98CF98), fontSize: 16),
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }
}
