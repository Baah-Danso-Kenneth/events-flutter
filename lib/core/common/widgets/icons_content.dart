import 'package:events/core/res/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsContent extends StatelessWidget {
  const IconsContent({super.key, required this.iconData, required this.onTap});
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colours.primaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Icon(iconData, color: Colours.secondaryColor,size: 25,),
      ),
    );
  }
}
