import 'package:events/core/res/colours.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({
    super.key,
    required this.onTap,
    required this.eventImage,
    required this.dateTime,
    required this.price,
    required this.concertTitle,
    required this.location,
    required this.eventStartTime,
    required this.eventEndTime,
  });

  final VoidCallback onTap;
  final String eventImage;
  final DateTime dateTime;
  final int price;
  final String concertTitle;
  final String location;
  final DateTime eventStartTime;
  final DateTime eventEndTime;

  @override
  Widget build(BuildContext context) {
    // Format the event times
    String formattedStartTime = DateFormat.jm().format(eventStartTime);
    String formattedEndTime = DateFormat.jm().format(eventEndTime);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  eventImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colours.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                      children: [
                        Text(
                          concertTitle,
                          style: TextStyle(color: Colours.secondaryColor, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              location,
                              style: TextStyle(color: Colours.secondaryColor),
                            ),
                            const SizedBox(width: 8), // Add space between location and time
                            Text(
                              '$formattedStartTime - $formattedEndTime',
                              style: TextStyle(color: Colours.secondaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colours.secondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center( // Center the text within the container
                        child: Text(
                          '\$$price',
                          style: TextStyle(color: Colours.baseColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colours.primaryColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(DateFormat.d().format(dateTime), style: const TextStyle(color: Colours.secondaryColor)),
                      const SizedBox(height: 2),
                      Text(DateFormat('MMM').format(dateTime).toUpperCase(), style: const TextStyle(color: Colours.secondaryColor)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
