import 'package:events/core/res/colours.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class BarcodeContent extends StatelessWidget {
  const BarcodeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
      child: BarcodeWidget(
        data: '1234567890',
        width: double.infinity,
        height: 50,
        drawText: false,
        barcode: Barcode.code128(),
        color: Colours.baseColor,
      ),
    );
  }
}
