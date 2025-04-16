import 'package:flutter/material.dart';
import 'package:mdmfit/view/user_management/all_users.dart';


import '../../widgets/gradient_tab_bar_2.dart';



class UserManagementMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTabBarView2(
      title: "User Management",
      tab1Title: "Users",
      tab2Title: "Requests",
      tab1Content: AllUsersScreen(),
      tab2Content: Center(child: Text("User  Requests")),
    );
  }
}
