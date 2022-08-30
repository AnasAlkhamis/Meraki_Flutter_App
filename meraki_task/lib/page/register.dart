import 'package:flutter/material.dart';

import '../models/user.dart';
import '../widget/text_field.dart';

class Register extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: Image.asset(
                  "assets/images/register.png",
                  height: 300,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hint: 'Enter your email ',
                label: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hint: 'Enter your password',
                label: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  shape: StadiumBorder(),
                  primary: Color(0xFF98CF98),
                ),
                onPressed: () {
                  User userData =
                      User(emailController.text, passwordController.text);
                  userData.addUser();
                },
                child: Text("Register", style: TextStyle(fontSize: 16.00)),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to reversed route when press.
                  Navigator.pop(context);
                },
                child: const Text("login",
                    style:
                        TextStyle(fontSize: 16.00, color: Color(0xFF98CF98))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
