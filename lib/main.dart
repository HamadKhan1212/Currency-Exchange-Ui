import 'package:currency_exchange/screen/user_side/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoarding(),
      theme: ThemeData.light().copyWith(primaryColor: Color(0xff503981)),
    );
  }
}
