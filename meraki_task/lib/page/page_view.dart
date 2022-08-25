import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/dot.dart';
import '../widget/on_bording.dart';
import '../models/on_bording.dart';

class PageViewsBoarding extends StatefulWidget {
  @override
  State<PageViewsBoarding> createState() => _PageViewsBoardingState();
}

class _PageViewsBoardingState extends State<PageViewsBoarding> {
  int activePage = 0;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: data.length,
        onPageChanged: (value) {
          setState(() {
            activePage = value;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Spacer(),
                OnBoarding(
                  image: data[index].image,
                  title: data[index].title,
                  description: data[index].description,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    data.length,
                    (index) => Dot(index: index, activePage: activePage),
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 40),
                    shape: StadiumBorder(),
                    primary: Color(0xFF98CF98),
                  ),
                  onPressed: () {
                    if (activePage < data.length - 1) {
                      pageController.animateToPage(activePage + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Text(activePage == data.length - 1 ? "Start" : "Next",
                      style: TextStyle(fontSize: 16.00)),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("Skip",
                      style:
                          TextStyle(fontSize: 16.00, color: Color(0xFF98CF98))),
                ),
                Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
