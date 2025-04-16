
import 'package:mdmfit/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:mdmfit/view/login/login_view.dart';

import 'const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mdmfit 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
      home: const LoginView(),
    );
  }
}

