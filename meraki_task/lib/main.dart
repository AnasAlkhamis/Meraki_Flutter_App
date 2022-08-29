import 'package:flutter/material.dart';
import 'page/page_view.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageViewsBoarding());
  }
}
