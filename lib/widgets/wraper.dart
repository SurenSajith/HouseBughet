import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main_screen.dart';
import 'package:flutter_application_1/screens/onboarding_screen.dart';

class Wraper extends StatefulWidget {
  final bool showMainScreen; 
  const Wraper({super.key, required this.showMainScreen});

  @override
  State<Wraper> createState() => _WraperState();
}

class _WraperState extends State<Wraper> {
  @override
  Widget build(BuildContext context) {
    return widget.showMainScreen 
    ? MainScreen() 
    : OnboardingScreen();
  }
}
