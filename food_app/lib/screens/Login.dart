import 'package:flutter/material.dart';
import 'package:food_app/src/LoginController.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 200,
                  width: 200,
                ),
              ],
            ),

            // Page Title
            Text(
              "Welcome to Fuddy",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // input

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      // email
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text("Email"), hintText: "Type your email"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is required";
                          }
                          return null;
                        },
                        controller: controller.emailController,
                      ),

                      // password
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text("Password"),
                            hintText: "Type your passwrod",
                            suffix: Icon(Icons.remove_red_eye_outlined)),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Passwod is required";
                          }
                          return null;
                        },
                        controller: controller.passwordController,
                      ),

                      // submit button
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: OutlinedButton.icon(
                          onPressed: () => controller.login(context),
                          icon: Icon(Icons.login),
                          label: Text("Login"),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
