import 'package:mdmfit/const/colors.dart';
import 'package:flutter/material.dart';

import '../view/user_management/user_detail_screen.dart';

class UserRow extends StatelessWidget {
  final Map<String, dynamic> wObj; // Specify the type for better type safety
  const UserRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: TColor.primaryColor1, // Background color
              borderRadius: BorderRadius.circular(30), // Rounded corners
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                wObj["profilePic"] ?? 'assets/img/Workout2.png', // Use default image if null
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wObj["name"].toString(),
                  style: TextStyle(color: TColor.black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Email: ${wObj["email"] ?? 'N/A'}",
                  style: TextStyle(color: TColor.gray, fontSize: 12),
                ),
                // Text(
                //   "Phone: ${wObj["phone"] ?? 'N/A'}",
                //   style: TextStyle(color: TColor.gray, fontSize: 12),
                // ),
                Text(
                  "Membership: ${wObj["membershipType"] ?? 'N/A'}",
                  style: TextStyle(color: TColor.gray, fontSize: 12),
                ),
                Text(
                  "Status: ${wObj["membershipStatus"] ?? 'N/A'}",
                  style: TextStyle(color: TColor.gray, fontSize: 12),
                ),
                // const SizedBox(height: 4),
                // Text(
                //   "Subscriptions: ${wObj["subscriptions"]?.map((sub) => sub["name"]).join(", ") ?? 'None'}",
                //   style: TextStyle(color: TColor.gray, fontSize: 12),
                // ),
                // const SizedBox(height: 4),
                // Text(
                //   "Transactions: ${wObj["transactions"]?.length ?? 0}",
                //   style: TextStyle(color: TColor.gray, fontSize: 12),
                // ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigate to user details page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailView(user: wObj), // Assuming you have a UserDetailView
                ),
              );
            },
            icon: Container(
              width: 30, // Set the width of the container
              height: 30, // Set the height of the container
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the shape circular
                border: Border.all(
                  color: Color(0x792d2d2d),// Set the border color
                  width: 2, // Set the border width
                ),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Color(0x792d2d2d),
              ),
            ),
            ),
        ],
      ),
    );
  }
}