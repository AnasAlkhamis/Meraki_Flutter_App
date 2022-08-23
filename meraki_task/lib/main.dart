import 'dart:html';

import 'package:flutter/material.dart';
import 'components/onbording/on_bording_list.dart';
import 'components/onbording/page_view.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageViewsBoarding(
        children: children,
      ),
    );
  }
}
