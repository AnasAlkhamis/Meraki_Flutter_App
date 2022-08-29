import 'package:flutter/material.dart';
import 'register.dart';
import '../widget/text_field.dart';
import '../models/user.dart';

class Login extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  UserData userData = UserData();
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
                  "assets/images/login.png",
                  height: 300,
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: emailController,
                hint: 'Enter your email ',
                label: 'Email',
              ),
              const SizedBox(height: 30),
              TextField(
                controller: passwordController,
                autofocus: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Color(0xFF98CF98), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(color: Color(0xFF98CF98), width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(color: Color(0xFF98CF98), width: 2),
                  ),
                  labelText: 'Password',
                  labelStyle:
                      const TextStyle(color: Color(0xFF98CF98), fontSize: 16),
                  hintText: 'Enter your password',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
              // CustomTextField(
              //   hint: 'Enter your password',
              //   label: 'Password',
              // ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  shape: StadiumBorder(),
                  primary: Color(0xFF98CF98),
                ),
                onPressed: () {
                  // user.addUser(
                  //     email: emailController, pass: passwordController);
                  String sss = userData.findUser(
                      emailController.text, passwordController.text);
                      print(sss);
                  List ss = userData.getData();
                  print(ss);
                },
                child: Text("Login", style: TextStyle(fontSize: 16.00)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  // Navigate to second route when press.

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ));
                },
                child: const Text("Create new account",
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
