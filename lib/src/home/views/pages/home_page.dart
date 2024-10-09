import 'package:flutter/material.dart';

import '../../../../core/res/media.dart';
import '../../../events/views/pages/events_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 250, // Specify a height for the EventsCard
              child: EventsCard(
                onTap: () {},
                eventImage: Media.onboardingMusicImage, // Ensure this is a valid asset
                dateTime: DateTime(2024, 10, 12),
                price: 328,
                concertTitle: 'Dev Geng',
                location: 'Marina mall Opposite Lapaz',
                eventStartTime: DateTime(2024, 10, 8, 8, 0),
                eventEndTime: DateTime(2024, 10, 8, 17, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
