import 'package:fl_chart/fl_chart.dart';
final List<Map<String, dynamic>> users = [
  {"id":"101",
    "name": "John Doe",
    "profilePic": "assets/img/Workout2.png",
    "email": "john.doe@example.com",
    "phone": "+1234567890",
    "membershipType": "Premium",
    "lastCheckIn": "2023-10-01 10:30 AM",
    "expiryDate": "2023-10-31",
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Yearly Subscription", "isActive": false},
    ],
    "transactions": [
      {"id": "T001", "status": "Completed"},
      {"id": "T002", "status": "Failed", "failureReason": "Insufficient funds"},
    ],
  },
  {"id":"102",
    "name": "John Doe",
    "profilePic": "assets/img/Workout2.png",
    "email": "john.doe@example.com",
    "phone": "+1234567890",
    "membershipType": "Premium",
    "lastCheckIn": "2023-10-01 10:30 AM",
    "expiryDate": "2023-10-31", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Yearly Subscription", "isActive": false},
    ],
    "transactions": [
      {"id": "T001", "status": "Completed"},
      {"id": "T002", "status": "Failed", "failureReason": "Insufficient funds"},
    ],
  },
  {"id":"103",
    "name": "Jane Smith",
    "profilePic": "assets/img/Workout2.png",
    "email": "jane.smith@example.com",
    "phone": "+0987654321",
    "membershipType": "Basic",
    "lastCheckIn": "2023-10-01 09:15 AM",
    "expiryDate": "2023-09-30", // Example expiry date
    "membershipStatus": "Expired",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": false},
    ],
    "transactions": [
      {"id": "T003", "status": "Completed"},
      {"id": "T004", "status": "Failed", "failureReason": "Card expired"},
    ],
  },
  {"id":"104",
    "name": "Mike Jones",
    "profilePic": "assets/img/Workout2.png",
    "email": "mike.jones@example.com",
    "phone": "+1122334455",
    "membershipType": "Standard",
    "lastCheckIn": "2023-09-30 08:45 PM",
    "expiryDate": "2023-10-15", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Personal Training", "isActive": true},
    ],
    "transactions": [
      {"id": "T005", "status": "Completed"},
      {"id": "T006", "status": "Pending"},
    ],
  },
  {"id":"105",
    "name": "Emily Johnson",
    "profilePic": "assets/img/Workout2.png",
    "email": "emily.johnson@example.com",
    "phone": "+2233445566",
    "membershipType": "Premium",
    "lastCheckIn": "2023-10-01 11:00 AM",
    "expiryDate": "2023-11-30", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Nutrition Plan", "isActive": true},
    ],
    "transactions": [
      {"id": "T007", "status": "Completed"},
      {"id": "T008", "status": "Failed", "failureReason": "Payment declined"},
    ],
  },
  {"id":"106",
    "name": "Chris Brown",
    "profilePic": "assets/img/Workout2.png",
    "email": "chris.brown@example.com",
    "phone": "+3344556677",
    "membershipType": "Basic",
    "lastCheckIn": "2023-09-29 07:30 PM",
    "expiryDate": "2023-10-05", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
    ],
    "transactions": [
      {"id": "T009", "status": "Completed"},
      {"id": "T010", "status": "Pending"},
    ],
  },
  // Add more users as needed
];

List recentUsersArr = [
  {
    "name": "John Doe",
    "profilePic": "assets/img/Workout2.png",
    "email": "john.doe@example.com",
    "phone": "+1234567890",
    "membershipType": "Premium",
    "lastCheckIn": "2023-10-01 10:30 AM",
    "expiryDate": "2023-10-31", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Yearly Subscription", "isActive": false},
    ],
    "transactions": [
      {"id": "T001", "status": "Completed"},
      {"id": "T002", "status": "Failed", "failureReason": "Insufficient funds"},
    ],
  },
  {
    "name": "Jane Smith",
    "profilePic": "assets/img/Workout2.png",
    "email": "jane.smith@example.com",
    "phone": "+0987654321",
    "membershipType": "Basic",
    "lastCheckIn": "2023-10-01 09:15 AM",
    "expiryDate": "2023-09-30", // Example expiry date
    "membershipStatus": "Expired",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": false},
    ],
    "transactions": [
      {"id": "T003", "status": "Completed"},
      {"id": "T004", "status": "Failed", "failureReason": "Card expired"},
    ],
  },
  {
    "name": "Mike Jones",
    "profilePic": "assets/img/Workout2.png",
    "email": "mike.jones@example.com",
    "phone": "+1122334455",
    "membershipType": "Standard",
    "lastCheckIn": "2023-09-30 08:45 PM",
    "expiryDate": "2023-10-15", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Personal Training", "isActive": true},
    ],
    "transactions": [
      {"id": "T005", "status": "Completed"},
      {"id": "T006", "status": "Pending"},
    ],
  },
  {
    "name": "Emily Johnson",
    "profilePic": "assets/img/Workout2.png",
    "email": "emily.johnson@example.com",
    "phone": "+2233445566",
    "membershipType": "Premium",
    "lastCheckIn": "2023-10-01 11:00 AM",
    "expiryDate": "2023-11-30", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
      {"name": "Nutrition Plan", "isActive": true},
    ],
    "transactions": [
      {"id": "T007", "status": "Completed"},
      {"id": "T008", "status": "Failed", "failureReason": "Payment declined"},
    ],
  },
  {
    "name": "Chris Brown",
    "profilePic": "assets/img/Workout2.png",
    "email": "chris.brown@example.com",
    "phone": "+3344556677",
    "membershipType": "Basic",
    "lastCheckIn": "2023-09-29 07:30 PM",
    "expiryDate": "2023-10-05", // Example expiry date
    "membershipStatus": "Active",
    "subscriptions": [
      {"name": "Monthly Subscription", "isActive": true},
    ],
    "transactions": [
      {"id": "T009", "status": "Completed"},
      {"id": "T010", "status": "Pending"},
    ],
  },

];
List<int> showingTooltipOnSpots = [21];

List<FlSpot> get allSpots => const [
  FlSpot(0, 20),
  FlSpot(1, 25),
  FlSpot(2, 40),
  FlSpot(3, 50),
  FlSpot(4, 35),
  FlSpot(5, 40),
  FlSpot(6, 30),
  FlSpot(7, 20),
  FlSpot(8, 25),
  FlSpot(9, 40),
  FlSpot(10, 50),
  FlSpot(11, 35),
  FlSpot(12, 50),
  FlSpot(13, 60),
  FlSpot(14, 40),
  FlSpot(15, 50),
  FlSpot(16, 20),
  FlSpot(17, 25),
  FlSpot(18, 40),
  FlSpot(19, 50),
  FlSpot(20, 35),
  FlSpot(21, 80),
  FlSpot(22, 30),
  FlSpot(23, 20),
  FlSpot(24, 25),
  FlSpot(25, 40),
  FlSpot(26, 50),
  FlSpot(27, 35),
  FlSpot(28, 50),
  FlSpot(29, 60),
  FlSpot(30, 40)
];
List membershipArr = [
  {"title": "John Doe", "subtitle": "Renewed Membership"},
  {"title": "Jane Smith", "subtitle": "New Signup"},
  {"title": "Mike Johnson", "subtitle": "Expired Membership"},
  {"title": "Emily Davis", "subtitle": "Membership Renewed"},
  {"title": "Robert Brown", "subtitle": "Pending Renewal"},
];
