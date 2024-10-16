import 'package:flutter/material.dart';
import 'screens/event_list_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Event Navigation App',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: EventListScreen(),
  ));
}
