import '../models/event.dart';

class EventService {
  List<Event> getEvents() {
    return [
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
  }
}
