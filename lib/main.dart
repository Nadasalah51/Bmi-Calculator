import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "HomeScreen",
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        ResultScreen.routeName: (context) => ResultScreen(),
      },
    );
  }
}
