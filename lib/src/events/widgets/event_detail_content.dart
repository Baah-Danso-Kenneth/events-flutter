import 'package:events/core/res/colours.dart';
import 'package:flutter/material.dart';

class EventDetailContent extends StatelessWidget {
  const EventDetailContent({super.key, required this.eventPrice, required this.dateTime, required this.description, required this.eventName, required this.eventLocation, required this.eventImage});
  final String eventPrice;
  final DateTime dateTime;
  final String description;
  final String eventImage;
  final String eventName;
  final String eventLocation;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [

        ],
      ),
    );
  }
}
