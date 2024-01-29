import 'package:flutter/material.dart';
import 'package:food_app/screens/HomePage.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final adminEmail = "admin@gmail.com";
  final adminPass = "123456";

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (emailController.text == adminEmail &&
          passwordController.text == adminPass) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } else {
      print("Invalid");
    }
  }
}
