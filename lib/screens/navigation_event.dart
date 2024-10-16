import 'package:flutter/material.dart';
import '../models/event.dart';

class NavigationScreen extends StatelessWidget {
  final Event event;

  const NavigationScreen({super.key, required this.event});

  Future<void> _launchURL() async {
    final url =
        'https://www.google.com/maps/dir/?api=1&destination=${event.latitude},${event.longitude}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigate to ${event.title}')),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: const Text('Open Google Maps'),
        ),
      ),
    );
  }

  canLaunch(String url) {}

  launch(String url) {}
}
