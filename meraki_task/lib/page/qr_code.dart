import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../widget/text_field.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  final qrCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            hint: 'Enter your Text',
            label: 'Code',
            controller: qrCodeController,
          ),
          IconButton(
            iconSize: 50,
            icon: const Icon(
              Icons.add,
            ),
            // the method which is called
            // when button is pressed
            onPressed: () {
              setState(
                () {
                  qrCodeController;
                },
              );
            },
          ),
          QrImage(
            data: qrCodeController.text,
            version: QrVersions.auto,
            size: 200,
          ),
        ],
      ),
    );
  }
}
