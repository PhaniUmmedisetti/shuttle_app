import 'package:flutter/material.dart';
import 'package:shuttle/models/event.dart';

class EventItemWidget extends StatelessWidget {
  final EventModel? eventItem;

  const EventItemWidget({super.key, required this.eventItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Name'),
            onChanged: (value) {
              eventItem!.name = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Text field 2'),
            onChanged: (value) {
              eventItem!.sport = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Text field 3'),
            onChanged: (value) {
              eventItem!.totalAmount = int.parse(value);
              
            },
          ),
        ],
      ),
    );
  }
}
