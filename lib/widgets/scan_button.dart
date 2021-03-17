import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:happy_kitchen/pages/subpages/product_view.dart';

class ScanButton extends StatefulWidget {
  @override
  _ScanButtonState createState() => _ScanButtonState();
}

class _ScanButtonState extends State<ScanButton> {
  String _scanBarcode = 'Unknown';

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.0,
      width: 65.0,
      child: GestureDetector(
        onTap: () => scanBarcodeNormal().then(
          (value) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  ProductView(id: "yees 2", lastPage: "BACK"),
            ),
          ),
        ),
        child: Container(
          decoration:
              BoxDecoration(color: Color(0xff6C63FF), shape: BoxShape.circle),
          child: Center(
            child: SvgPicture.asset("assets/images/qr-code.svg",
                height: 50, width: 50),
          ),
        ),
      ),
    );
  }
}
