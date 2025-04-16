import 'package:flutter/material.dart';
import '../../../widgets/transaction_status_table.dart';

class PendingTransactionsTable extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"id": "T002", "amount": "\$30", "status": "Pending", "date": "2024-04-02", "method": "Bank"},
    {"id": "T006", "amount": "\$30", "status": "Pending", "date": "2024-04-02", "method": "Bank"},
    {"id": "T009", "amount": "\$30", "status": "Pending", "date": "2024-04-02", "method": "Bank"},
  ];

  @override
  Widget build(BuildContext context) {
    return TransactionStatusTable(
      status: "Pending",
      transactions: transactions,
    );
  }
}
