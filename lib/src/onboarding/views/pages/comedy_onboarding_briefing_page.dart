import 'package:events/core/res/media.dart';
import 'package:events/src/onboarding/widgets/onboarding_card.dart';
import 'package:flutter/material.dart';


class ComedyOnboardingBriefingPage extends StatelessWidget {
  const ComedyOnboardingBriefingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
                image: AssetImage(Media.onboardingComedyImage),fit: BoxFit.cover,)
          ),
          Positioned(
            right: 10,
              left: 10,
              bottom: 30,
              child: OnboardingCard(
                  title: 'Comedy Revamp',
                  description: 'Got the best of comedy event around the corner and trust us you will keep laughting out: We also promoting ghananinal commedy as a whole and all those magic stuff',
                  heightContainer: MediaQuery.of(context).size.height * 0.45))
        ],
      ),
    );
  }
}
