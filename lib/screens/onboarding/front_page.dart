import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Image.asset("assets/images/logo.png", width: 100, fit:BoxFit.cover,),
        SizedBox(height: 10,),
        
        Text("Budget of House Construction",
          textAlign: TextAlign.center, 
          style: TextStyle(
          fontSize: 30,
          color: kMainColor,
          fontWeight: FontWeight.bold
        ),
        ),
      ],
    );
  }
}