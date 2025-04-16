import 'package:flutter/material.dart';
import '../../widgets/gradient_tab_bar_3.dart';
import 'transaction_status/successful.dart';
import 'transaction_status/failed.dart';
import 'transaction_status/pending.dart';


class TransactionsStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTabBarView3(
      tab1Title: "Successful",
      tab2Title: "Pending",
      tab3Title: "Failed",
      tab1Content: SuccessfulTransactionsTable(),
      tab2Content: PendingTransactionsTable(),
      tab3Content: FailedTransactionsTable(),
    );
  }
}
