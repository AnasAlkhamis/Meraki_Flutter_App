import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onbording.dart';

class PageViewsBoarding extends StatelessWidget {
  final List<OnBoarding> children;
  const PageViewsBoarding({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: children,
    );
  }
}
