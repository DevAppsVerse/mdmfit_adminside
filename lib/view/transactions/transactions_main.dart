import 'package:flutter/material.dart';
import 'package:mdmfit/view/transactions/transaction_status.dart';

import '../../widgets/gradient_tab_bar_2.dart';

import 'transaction_table.dart';


class TransactionsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTabBarView2(
      title: "Transactions",
      tab1Title: "Transactions",
      tab2Title: "Status",
      tab1Content: TransactionsTableScreen(),
      tab2Content: TransactionsStatus(),
    );
  }
}
