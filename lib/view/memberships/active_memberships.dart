import 'package:flutter/material.dart';
import 'package:mdmfit/view/user_management/user_detail_screen.dart';

import '../user_management/users_data.dart';


class ActiveMemberships extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index)
    {
      final user = users[index];
      return Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text(" ${user['name']} (ID: ${user['id']})"), // Show user name
          subtitle: Text(
              "Membership: ${user['membershipType']} \nExpiry: ${user['expiryDate']}"),
          trailing: Icon(Icons.check_circle, color: Colors.green),
          onTap: () {
            // Navigate to User Detail Page when card is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserDetailView(user: user),
              ),
            );
          },
        ),
    );
    }
    )
    );
  }
}

