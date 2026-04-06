import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  static Future<void> storeUserDetails({
    required String userName,
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  }) async {
    try {
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Password and confirm password do not match')),
        );
        return;
      }
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("userName", userName);
      await prefs.setString("email", email);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User details stored successfully")),
      );
    } catch (err) {
      err.toString();
    }
  }

  // method to check username is saved in the shared prefrences

  static Future<bool> checkUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userName = prefs.getString('userName');
    return userName != null;
  }

  static Future<Map<String, String>> getUserData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String? userName = pref.getString("userName");
    String? email = pref.getString("email");

    return {"username": userName!, "email": email!};
  }
}
