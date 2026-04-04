import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "House Budget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: OnboardingScreen(),
    );
  }
}
