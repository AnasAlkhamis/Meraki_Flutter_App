import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  final _qrCodeController = TextEditingController();
  String qrText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: _qrCodeController,
                decoration: InputDecoration(
                  labelText: "QR",
                  hintText: "Eter you Text here",
                  hintStyle:
                      const TextStyle(color: Color(0xFF6F966F), fontSize: 12),
                  labelStyle:
                      const TextStyle(color: Color(0xFF98CF98), fontSize: 16),
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () {
                        qrText = _qrCodeController.text;
                        _qrCodeController.clear();
                      },
                    ),
                    child: const Icon(
                      Icons.qr_code,
                      color: Color(0xFF6F966F),
                    ),
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Color(0xFF98CF98), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          const BorderSide(color: Color(0xFF98CF98), width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFF98CF98), width: 2),
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Visibility(
                visible: qrText != "",
                child: QrImage(
                  data: qrText,
                  version: QrVersions.auto,
                  size: 200,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
