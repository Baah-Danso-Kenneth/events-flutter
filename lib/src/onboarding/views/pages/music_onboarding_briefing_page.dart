import 'package:events/core/res/media.dart';
import 'package:events/src/onboarding/widgets/onboarding_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/customize_button.dart';
import '../../../../core/res/colours.dart';

class MusicOnboardingPage extends StatelessWidget {
  const MusicOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(Media.onboardingMusicImage, fit: BoxFit.cover,)
          ),

          Positioned(
              bottom: 30,
              right: 10,
              left: 10,
              child: Column(
                children: [
                  OnboardingCard(
                    title: 'Music  Events',
                    description: 'We offer you a wide range of events for your amusement and also and experience you would never forget checkout any events and get captivated experience you would never forget checkout any events and get captivated',
                    heightContainer: MediaQuery.of(context).size.height * 0.48,
                  ),
                  CustomizeButton(
                    text: "Continue",
                    onTap: (){},
                    backgroundColor: Colours.secondaryColor,
                    width: double.infinity, ),
                ],
              ))
        ],
      ),
    );
  }
}
