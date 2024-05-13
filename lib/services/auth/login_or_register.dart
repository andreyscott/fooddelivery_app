import 'package:flutter/material.dart';
import 'package:fooddelivery_app/pages/login_page.dart';
import 'package:fooddelivery_app/pages/register_page.dart';

class LoginOrResister extends StatefulWidget {
  const LoginOrResister({
    super.key,
  });

  @override
  State<LoginOrResister> createState() => _LoginOrResisterState();
}

class _LoginOrResisterState extends State<LoginOrResister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
