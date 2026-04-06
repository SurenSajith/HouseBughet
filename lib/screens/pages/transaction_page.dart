import 'package:flutter/material.dart';

class transactionPage extends StatefulWidget {
  const transactionPage({super.key});

  @override
  State<transactionPage> createState() => _transactionPageState();
}

class _transactionPageState extends State<transactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("trans"),
      ),
    );
  }
}