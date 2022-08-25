import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  int index;
  int activePage;

  Dot({
    Key? key,
    required this.index,
    required this.activePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: index == activePage ? 18 : 15,
      width: index == activePage ? 18 : 15,
      margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
      decoration: BoxDecoration(
          color: index == activePage
              ? Color(0xFF98CF98)
              : Color(0x8A98CF98),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
