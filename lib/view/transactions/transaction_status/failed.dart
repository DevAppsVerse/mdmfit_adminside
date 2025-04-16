import 'package:flutter/material.dart';

import '../../../widgets/transaction_status_table.dart';


class FailedTransactionsTable extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"id": "T003", "amount": "\$20", "status": "Failed", "date": "2024-04-03", "method": "UPI"},
    {"id": "T007", "amount": "\$20", "status": "Failed", "date": "2024-04-03", "method": "UPI"},
    {"id": "T0010", "amount": "\$20", "status": "Failed", "date": "2024-04-03", "method": "UPI"},
  ];

  @override
  Widget build(BuildContext context) {
    return TransactionStatusTable(
      status: "Failed",
      transactions: transactions,
    );
  }
}
