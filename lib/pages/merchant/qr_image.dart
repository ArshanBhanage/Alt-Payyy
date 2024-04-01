import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class QRImage extends StatefulWidget {
  const QRImage({super.key});

  @override
  State<QRImage> createState() => _QRImageState();
}

class _QRImageState extends State<QRImage> {
  String? qrData = 'ArshanBhanage7798130861@jupiteraxis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.popAndPushNamed(context, "/scan");
        //     },
        //     icon: const Icon(
        //       Icons.qr_code_scanner,
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextField(
            //   onSubmitted: (value) {
            //     setState(() {
            //       qrData = value;
            //     });
            //   },
            // ),
            if (qrData != null) PrettyQrView.data(data: qrData!),
          ],
        ),
      ),
    );
  }
}