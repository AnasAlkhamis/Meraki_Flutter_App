import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  final String image;
  final String header;
  final String text;
  final String paragraph;

  // ignore: use_key_in_widget_constructors
  const OnBoarding(
    this.image,
    this.header,
    this.text,
    this.paragraph,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Image.asset(image),
            ),
            const SizedBox(height: 30),
            Visibility(
              visible: header != "" ? true : false,
              child: Text(
                header,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Visibility(
              visible: text != "" ? true : false,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Visibility(
              visible: paragraph != "" ? true : false,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  paragraph,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontWeight: FontWeight.w100, fontSize: 13),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          if (true) {
                            print("hello");
                          }
                        },
                        child: const Text('Next'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          if (true) {
                            print("hello");
                          }
                        },
                        child: const Text('Next'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
