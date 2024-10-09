import 'package:events/core/common/widgets/default_text.dart';
import 'package:events/core/common/widgets/icons_content.dart';
import 'package:events/core/res/colours.dart';
import 'package:events/core/res/media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventBanner extends StatelessWidget {
  const EventBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(Media.onboardingMusicImage, fit: BoxFit.cover,)),
          Positioned(
            top: 20,
              left: 10,
              right: 10,
              child: Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsContent(onTap: (){}, iconData: Icons.chevron_left,),
              DefaultText(text: 'Oliver Tree',fontWeight: FontWeight.w900, fontSize: 20,color: Colours.baseColor,),
              IconsContent(onTap: (){}, iconData: Icons.share,),
            ],)),
          Positioned(
            bottom: 10,
              right: 10,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oliver Tree', style: TextStyle(color: Colours.baseColor, fontSize: 20, fontWeight: FontWeight.w900),),
                      SizedBox(height: 5,),
                      Text('Concert: Jakarta, Indonesia', style: TextStyle(color: Colours.baseColor),)
                    ],
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colours.primaryColor
                    ),
                    child: Tab(
                      child: Text('\$45.90'),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
