import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shuttle/models/event.dart';

class HomeController extends GetxController {
  Rx<List<EventModel>> events = Rx<List<EventModel>>([]);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController eventTextEditingController = TextEditingController();
  TextEditingController countTextEditingController = TextEditingController();
  TextEditingController dateTextEditingController = TextEditingController();
  late EventModel eventsModel;
  var itemCount = 0.obs;

  final List<EventModel> eventsList = [
    EventModel(
        name: "phani1", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    EventModel(
        name: "phani2", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    EventModel(
        name: "phani3", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    EventModel(
        name: "phani4", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    EventModel(
        name: "phani5", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    EventModel(
        name: "phani6", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
    // EventModel(name: "phani7", createdAt: DateTime.parse('1969-07-20 20:18:04Z')),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameTextEditingController.dispose();
    eventTextEditingController.dispose();
    countTextEditingController.dispose();
    dateTextEditingController.dispose();
  }

  addEvent(
      String name, int totalAmount, int participantCount, DateTime? createdAt) {
    eventsModel = EventModel(
      name: name,
      totalAmount: totalAmount,
      participantCount: participantCount,
      createdAt: createdAt!,
    );
    events.value.add(eventsModel);
    itemCount.value = events.value.length;
    nameTextEditingController.clear();
    eventTextEditingController.clear();
    countTextEditingController.clear();
    dateTextEditingController.clear();
  }

  removeEvent(int index) {
    events.value.removeAt(index);
    itemCount.value = events.value.length;
  }

  void datePicker(context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2021));
  }
}
