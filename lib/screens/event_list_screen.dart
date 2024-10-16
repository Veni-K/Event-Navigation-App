import 'package:flutter/material.dart';
import '../models/event.dart';
import 'event_detail_screen.dart';

class EventListScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
      title: 'Music Concert',
      description: 'Enjoy live music with popular bands.',
      latitude: 37.7749,
      longitude: -122.4194,
    ),
    Event(
      title: 'Food Festival',
      description: 'Taste amazing dishes from around the world.',
      latitude: 34.0522,
      longitude: -118.2437,
    ),
  ];

  EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Events')),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            title: Text(event.title),
            subtitle: Text(event.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailScreen(event: event),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
