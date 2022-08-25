import 'package:flutter/material.dart';
import 'page/page_view.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageViewsBoarding());
  }
}
