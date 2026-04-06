import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color.dart';
import 'package:flutter_application_1/screens/pages/add_page.dart';
import 'package:flutter_application_1/screens/pages/budget_page.dart';
import 'package:flutter_application_1/screens/pages/home_page.dart';
import 'package:flutter_application_1/screens/pages/profile_page.dart';
import 'package:flutter_application_1/screens/pages/transaction_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _curentPageindex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      transactionPage(),
      AddPage(),
      BudgetPage(),
      ProfilePage(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        selectedItemColor: kMainColor,
        unselectedItemColor: kGrey,
        currentIndex: _curentPageindex,
        onTap: (index) {
          setState(() {
            _curentPageindex = index;
          });
        },
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: "Transaction",
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kMainColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: kWhite, size: 30),
            ),
            label: "",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.rocket), label: "Budgets"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: pages[_curentPageindex],
    );
  }
}
