import 'package:flutter/material.dart';

import '../widget/text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hint: 'Enter your password',
                label: 'Password',
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  shape: StadiumBorder(),
                  primary: Color(0xFF98CF98),
                ),
                onPressed: () {},
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
