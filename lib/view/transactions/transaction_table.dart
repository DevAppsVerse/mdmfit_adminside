import 'package:flutter/material.dart';

class TransactionsTableScreen extends StatelessWidget {
  final List<Map<String, String>> transactions = [
    {"id": "T001", "amount": "\$50", "status": "Success"},
    {"id": "T002", "amount": "\$30", "status": "Pending"},
    {"id": "T003", "amount": "\$20", "status": "Failed"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text("Transaction ID")),
            DataColumn(label: Text("Amount")),
            DataColumn(label: Text("Status")),
          ],
          rows: transactions.map((transaction) {
            return DataRow(cells: [
              DataCell(Text(transaction["id"]!)),
              DataCell(Text(transaction["amount"]!)),
              DataCell(Text(transaction["status"]!, style: TextStyle(color: getStatusColor(transaction["status"]!)))),
            ]);
          }).toList(),
        ),
      ),
    );
  }

  Color getStatusColor(String status) {
    switch (status) {
      case "Success":
        return Colors.green;
      case "Pending":
        return Colors.orange;
      case "Failed":
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
