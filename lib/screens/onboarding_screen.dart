import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/onboarding_data.dart';
import 'package:flutter_application_1/screens/onboarding/front_page.dart';
import 'package:flutter_application_1/screens/onboarding/shared_onboarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  bool showDetailsPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  children: [
                    FrontPage(),

                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[0].title,
                      imagePath: OnboardingData.onboardingDataList[0].imagePath,
                      decription: OnboardingData.onboardingDataList[0].description,
                    ),

                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[1].title,
                      imagePath: OnboardingData.onboardingDataList[1].imagePath,
                      decription: OnboardingData.onboardingDataList[1].description,
                    ),

                    SharedOnboardingScreen(
                      title: OnboardingData.onboardingDataList[2].title,
                      imagePath: OnboardingData.onboardingDataList[2].imagePath,
                      decription: OnboardingData.onboardingDataList[2].description,
                    ),

                    
                  ] 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
