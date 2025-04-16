import 'package:flutter/material.dart';
import 'package:mdmfit/view/home/home_view.dart';
import 'memberships/memberships_main.dart';
import 'transactions/transactions_main.dart';
import 'user_management/user_management_main.dart';

class MainNavBar extends StatefulWidget {
  @override
  _MainNavBarState createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    TransactionsMain(),
    UserManagementMain(),
    MembershipsMain(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff548f0b),
        unselectedItemColor: Colors.grey,
        // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Bold text for selected label

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz), label: 'Transactions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'User Management'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership), label: 'Memberships'),
        ],
      ),
    );
  }
}
