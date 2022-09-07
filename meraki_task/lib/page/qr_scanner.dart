import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  get qekey => null;

  get onQRViewCreated => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: QRView(
        key: qekey,
        onQRViewCreated: onQRViewCreated,
      ),
    );
  }
}
