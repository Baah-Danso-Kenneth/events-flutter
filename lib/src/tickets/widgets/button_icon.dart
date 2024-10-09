import 'package:events/core/common/widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
     this.textColor = Colors.white});

  final IconData icon;
  final String text;
  final Color? textColor;
  final VoidCallback? onTap;
  final  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: backgroundColor,
         borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 10,),
            DefaultText(text:text, fontSize: 18, fontWeight: FontWeight.w700,)
          ],
        ),
      ),
    );
  }
}
