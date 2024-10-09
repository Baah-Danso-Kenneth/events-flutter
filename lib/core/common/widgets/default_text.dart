import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  const DefaultText( {
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.height,
    this.textAlign,
    this.overflow,
    this.decoration,
    this.fontStyle,
    this.fontFamily,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? color;
  final double? letterSpacing;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing ?? 0,
        fontFamily: fontFamily ?? 'Nunito',
        height: height,
        decoration: decoration ?? TextDecoration.none,
        fontStyle: fontStyle,
      ),
    );
  }
}

