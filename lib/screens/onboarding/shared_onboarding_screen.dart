import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color.dart';

class SharedOnboardingScreen extends StatelessWidget {

  final String title;
  final String imagePath;
  final String decription;

  const SharedOnboardingScreen({

    super.key, 
    required this.title, 
    required this.imagePath, 
    required this.decription

    }
    );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Image.asset(imagePath, width: 300,fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500
            ),
          ),
          Text(
            decription,
            style: TextStyle(
              fontSize: 16,
              color: kGrey,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
