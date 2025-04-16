import 'package:flutter/material.dart';
import '../../../widgets/transaction_status_table.dart';


class SuccessfulTransactionsTable extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"id": "T001", "amount": "\$50", "status": "Success", "date": "2024-04-01", "method": "Card"},
    {"id": "T004", "amount": "\$70", "status": "Success", "date": "2024-04-04", "method": "Wallet"},
     {"id": "T005", "amount": "\$50", "status": "Success", "date": "2024-04-01", "method": "Card"},
    {"id": "T011", "amount": "\$70", "status": "Success", "date": "2024-04-04", "method": "Wallet"},
  ];

  @override
  Widget build(BuildContext context) {
    return TransactionStatusTable(
      status: "Success",
      transactions: transactions,
    );
  }
}
