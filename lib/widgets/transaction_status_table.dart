import 'package:flutter/material.dart';

class TransactionStatusTable extends StatelessWidget {
  final String status;
  final List<Map<String, String>> transactions;

  const TransactionStatusTable({
    Key? key,
    required this.status,
    required this.transactions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return Center(
        child: Text("No $status transactions found."),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text("ID")),
          DataColumn(label: Text("Amount")),
          DataColumn(label: Text("Date")),
          DataColumn(label: Text("Method")),
        ],
        rows: transactions.map((t) {
          return DataRow(cells: [
            DataCell(Text(t["id"]!)),
            DataCell(Text(t["amount"]!)),
            DataCell(Text(t["date"]!)),
            DataCell(Text(t["method"]!)),
          ]);
        }).toList(),
      ),
    );
  }
}
