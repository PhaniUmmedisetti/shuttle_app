class EventModel {
  String name;
  DateTime createdAt;
  int? totalAmount;
  int? participantCount;

  EventModel({
    required this.name,
    required this.createdAt,
    this.totalAmount,
    this.participantCount,
  });
}
