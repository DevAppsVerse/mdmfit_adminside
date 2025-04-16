class PaymentStatistics {
  double totalPayments;
  double lastWeekPayments;
  int successfulTransactions;
  int pendingTransactions;
  int failedTransactions;

  PaymentStatistics({required this.totalPayments, required this.lastWeekPayments,
    required this.successfulTransactions, required this.pendingTransactions,
    required this.failedTransactions});
}
