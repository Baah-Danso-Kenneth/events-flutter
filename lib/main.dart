import 'package:events/core/res/colours.dart';
import 'package:events/src/events/views/pages/events_details_page.dart';
import 'package:events/src/home/views/pages/home_page.dart';
import 'package:events/src/onboarding/views/pages/comedy_onboarding_briefing_page.dart';
import 'package:events/src/onboarding/views/pages/welcome_to_onboarding_page.dart';
import 'package:events/src/tickets/views/pages/ticket_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventsApp());
}

class EventsApp extends StatelessWidget {
  const EventsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colours.secondaryColor),
        useMaterial3: true,
      ),
      home: TicketPage(),
    );
  }
}

