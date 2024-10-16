import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/event.dart';
import 'navigation_event.dart';

class EventDetailScreen extends StatefulWidget {
  final Event event;

  const EventDetailScreen({super.key, required this.event});

  @override
  _EventDetailScreenState createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.event.title)),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: GoogleMap(
              onMapCreated: (controller) {
                mapController = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(widget.event.latitude, widget.event.longitude),
                zoom: 14.0,
              ),
              markers: {
                Marker(
                  markerId: const MarkerId('eventLocation'),
                  position:
                      LatLng(widget.event.latitude, widget.event.longitude),
                  infoWindow: InfoWindow(title: widget.event.title),
                ),
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.event.description,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavigationScreen(event: widget.event),
                ),
              );
            },
            child: const Text('Navigate to Event'),
          ),
        ],
      ),
    );
  }
}
