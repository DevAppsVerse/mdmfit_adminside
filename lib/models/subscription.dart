class Subscription {
  String id;
  String planName;
  bool isActive;
  DateTime startDate;
  DateTime endDate;

  Subscription({required this.id, required this.planName, required this.isActive,
    required this.startDate, required this.endDate});
}
