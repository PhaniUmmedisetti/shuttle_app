class EventModel {
   String name;
   String sport;
  int? totalAmount;
  int? participantCount;

  EventModel({
    required this.name,
    required this.sport,
    this.totalAmount,
    this.participantCount,
  });
}
