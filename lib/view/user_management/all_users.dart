import 'package:flutter/material.dart';
import 'package:mdmfit/const/colors.dart';
import 'user_detail_screen.dart';
import 'users_data.dart'; // Import your user detail screen

class AllUsersScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return UserCard(user: users[index]);
          },
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Map<String, dynamic> user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailView(user: user),
          ),
        );
      },
      child: Card(
        elevation: 5,
        // margin: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
                    user['profilePic'] ?? 'assets/img/Workout2.png', // Use default image if null
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user['name'],
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      user['email'],
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      'Membership: ${user['membershipType']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Status: ${user['membershipStatus']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Last Check-In: ${user['lastCheckIn']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDetailView(user: user),
                    ),
                  );
                },
                child: Text('Details', style: TextStyle(color: TColor.primaryColor1),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}