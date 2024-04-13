import 'package:flutter/material.dart';
import 'package:fooddelivery_app/components/buttons.dart';
import 'package:fooddelivery_app/components/text_field.dart';
import 'package:fooddelivery_app/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // login
  void login() {
    // fill out authentication here

    // then navigate to home page

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 70,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            "Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: false),
          const SizedBox(
            height: 12,
          ),
          MyButton(onTap: login, text: "Sing In"),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
