import 'package:dotted_border/dotted_border.dart';
import 'package:events/core/res/colours.dart';
import 'package:flutter/material.dart';

class ShortDashes extends StatelessWidget {
  const ShortDashes({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colours.baseColor,
        dashPattern: [0.5],
        strokeWidth: 2,
        child: Container(
          width: double.infinity,
          height: 0.5,
          color: Colors.transparent,
        )
    );
  }
}
