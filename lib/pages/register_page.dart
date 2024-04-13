import 'package:flutter/material.dart';
import 'package:fooddelivery_app/components/buttons.dart';
import 'package:fooddelivery_app/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            "Let's create an account for you",
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
            height: 25,
          ),
          MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: false),
          const SizedBox(
            height: 12,
          ),
          MyButton(onTap: () {}, text: "Sign Up"),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login here",
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
