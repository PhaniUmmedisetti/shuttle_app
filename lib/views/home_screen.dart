import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController controller = HomeController();

  final DateFormat dtFormatter = DateFormat('yMMMd');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Display the dialog box when FAB is pressed
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Create event'),
                // content: Text('This is a dialog box.'),
                actions: <Widget>[
                  TextField(
                    controller: controller.nameTextEditingController,
                    decoration: const InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      isDense: true,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: controller.eventTextEditingController,
                    decoration: const InputDecoration(
                      hintText: "Address",
                      labelText: "Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      isDense: true,
                    ),
                  ),
                  TextButton(
                    child: const Text('Close'),
                    onPressed: () {
                      // controller.addEvent(
                      //   controller.nameTextEditingController.text,
                      //   controller.eventTextEditingController.text,
                      // );
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      // body: Text('hi'),
      body: ListView.builder(
        itemCount: controller.eventsList.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${index + 1}'),
            ),
            title: Text(controller.eventsList[index].name),
            subtitle: Text(
                dtFormatter.format(controller.eventsList[index].createdAt)),
            trailing: GestureDetector(
              child: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onTap: () {
                controller.removeEvent(index);
              },
            ),
          );
        }),
      ),
    );
  }
}
