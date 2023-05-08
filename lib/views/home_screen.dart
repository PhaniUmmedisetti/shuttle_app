import 'package:flutter/material.dart';
import 'package:shuttle/widgets/event_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: EventItemWidget(eventItem: null,),
    );
  }
}
