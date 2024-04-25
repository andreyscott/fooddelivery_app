// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fooddelivery_app/auth/login_or_register.dart';
import 'package:fooddelivery_app/models/restaurant.dart';
// import 'package:fooddelivery_app/pages/login_page.dart';
import 'package:fooddelivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const LoginOrResister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
