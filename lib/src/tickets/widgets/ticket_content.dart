import 'package:flutter/material.dart';

import '../../../core/res/colours.dart';

class TicketContent extends StatelessWidget {
  const TicketContent({super.key, required this.type, required this.section, required this.info, required this.info1});

  final String type;
  final String section;
  final String info;
  final String info1;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(type, style: TextStyle(color: Colours.baseColor),),
              SizedBox(height: 10,),
              Text(info, style: TextStyle(color: Colours.baseColor))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(section,style: TextStyle(color: Colours.baseColor)),
              Text(info1,style: TextStyle(color: Colours.baseColor))
            ],
          )
        ],
      ),
    );
  }
}
