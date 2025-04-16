import 'package:flutter/material.dart';
import 'package:mdmfit/const/colors.dart';


class UserDetailView extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserDetailView({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user['name']),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildProfileSection(),
            _buildBasicDetails(),
            _buildSubscriptions(),
            _buildTransactions(),

          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: TColor.primaryColor1,
          backgroundImage: AssetImage(user['profilePic']),
        ),
        SizedBox(height: 10),
        Text(user['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(user['email'], style: TextStyle(fontSize: 16, color: Colors.grey)),
        Text(user['phone'], style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }

  Widget _buildBasicDetails() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Basic Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Membership Type: ${user['membershipType']}", style: TextStyle(fontSize: 16)),
            Text("Membership Status: ${user['membershipStatus']}", style: TextStyle(fontSize: 16)),
            Text("Last Check-In: ${user['lastCheckIn']}", style: TextStyle(fontSize: 16)),
            Text("Expiry Date: ${user['expiryDate']}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildSubscriptions() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Subscriptions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ...user['subscriptions'].map<Widget>((sub) => ListTile(
              title: Text(sub['name']),
              trailing: Icon(
                sub['isActive'] ? Icons.check_circle : Icons.cancel,
                color: sub['isActive'] ? Colors.green : Colors.red,
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactions() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Transactions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ...user['transactions'].map<Widget>((txn) => ListTile(
              title: Text("Transaction ID: ${txn['id']}"),
              subtitle: txn['status'] == "Failed"
                  ? Text("Status: ${txn['status']}\nReason: ${txn['failureReason']}",
                  style: TextStyle(color: Colors.red))
                  : Text("Status: ${txn['status']}",
                  style: TextStyle(color: txn['status'] == "Completed" ? Colors.green : Colors.orange)),
            )),
          ],
        ),
      ),
    );
  }
}
