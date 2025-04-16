class Transaction {
  String id;
  double amount;
  String status; // "successful", "pending", "failed"
  DateTime date;
  String paymentMethod;
  String failureReason;

  Transaction({required this.id, required this.amount, required this.status,
    required this.date, required this.paymentMethod, this.failureReason = ""});
}
