import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScannerPage extends StatelessWidget {
  const QRCodeScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
        backgroundColor: Colors.blue,
      ),
      body: MobileScanner(
        onDetect: (BarcodeCapture barcodeCapture) {
          final List<Barcode> barcodes = barcodeCapture.barcodes;
          if (barcodes.isNotEmpty) {
            final String code = barcodes.first.rawValue ?? "No data found";

            // Display the scanned data in a dialog
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('QR Code Scanned'),
                content: Text('Scanned Data: $code'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
