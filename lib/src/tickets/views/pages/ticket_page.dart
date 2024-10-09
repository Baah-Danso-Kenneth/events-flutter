import 'package:events/core/res/colours.dart';
import 'package:events/core/res/media.dart';
import 'package:events/src/tickets/widgets/barcode_content.dart';
import 'package:events/src/tickets/widgets/button_icon.dart';
import 'package:events/src/tickets/widgets/short_dashes.dart';
import 'package:events/src/tickets/widgets/ticket_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colours.secondaryColor,

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child:Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colours.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    ),
                    child: Image.asset(Media.onboardingTechImage,fit: BoxFit.cover,)),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colours.primaryColor,
                  borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colours.secondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                    ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                          'Oliver Tree Concert: Indonesia',
                          style: TextStyle(fontSize: 18, color: Colours.baseColor, fontFamily: 'Nunito'),
                          textAlign: TextAlign.center),
                      SizedBox(height: 2,),
                      Text('29 December 2024',
                        style: TextStyle(fontSize: 14, color: Colours.baseColor, fontFamily: 'Nunito'),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ShortDashes(),
                      ),
                      SizedBox(height: 10,),
                      TicketContent(type: 'Date', section: 'time', info: 'Dec 29, 2024', info1: '10:00PM'),
                      SizedBox(height: 20,),
                      TicketContent(type: 'Venue', section: 'Seat', info: ' Gelora Bung Karno, 2024', info1: 'No seat'),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ShortDashes(),
                      ),

                   BarcodeContent()
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonIcon(icon: Icons.download, text: 'Download', onTap: (){}, backgroundColor: Colours.primaryColor),
                ButtonIcon(icon: Icons.qr_code, text: 'Qr-code', onTap: (){}, backgroundColor: Colours.primaryColor)

              ],
            )
          ],
        )
          ),
    );
  }
}


