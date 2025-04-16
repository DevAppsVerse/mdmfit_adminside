import 'package:flutter/material.dart';
import '../../widgets/gradient_tab_bar_2.dart';
import 'active_memberships.dart';
import 'membership_history.dart';



class MembershipsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTabBarView2(
      title: "Memberships",
      tab1Title: "Active",
      tab2Title: "History",
      tab1Content: ActiveMemberships(),
      tab2Content: MembershipHistory(),
    );

  }
}
