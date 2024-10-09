import 'package:events/core/common/widgets/customize_button.dart';
import 'package:events/core/res/colours.dart';
import 'package:events/src/events/widgets/event_banner.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/icons_content.dart';

class EventsDetails extends StatelessWidget {
  const EventsDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colours.secondaryColor,
      body: Column(
          children: [
            EventBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('29',style: TextStyle(color: Colours.baseColor)),
                      Text('December',style: TextStyle(color: Colours.baseColor))
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tuesday', style: TextStyle(color: Colours.baseColor),),
                      Text('10:00 PM -End',style: TextStyle(color: Colours.baseColor)),
                    ],
                  ),

                  Container(
                      decoration: BoxDecoration(
                        color: Colours.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Icon(Icons.abc),
                      )),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('about this events: When the concert of oliver Tree will be on the state in 10:00.List of on the song and the rest',style: TextStyle(color: Colours.baseColor)),
            ),
            SizedBox(height: 20,),
            Text('Description'),
            Text('Oliver Tree '),
            SizedBox(height: 20,),
            Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  IconsContent(onTap: (){}, iconData: Icons.heart_broken,),
                  const SizedBox(width: 20,),
                  Expanded(
                      child: CustomizeButton(
                          backgroundColor: Colours.primaryColor,
                          textColor: Colours.secondaryColor,
                          borderRadius: 20,
                          text: 'get tickets', onTap: (){}))
                ],
              ),
            )
          ],
        ),
    );
  }
}
