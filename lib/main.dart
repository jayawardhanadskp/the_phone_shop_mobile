import 'package:flutter/material.dart';
import 'package:the_phone_shop/screens/onbordscreen.dart';
import 'package:the_phone_shop/screens/signin_page.dart';
import 'package:the_phone_shop/screens/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Phone Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const OnbordScreen(),
      routes: {
        '/signin_page': (context) => const SignIn(),
        '/signup_page': (context) => const SignUp(),
      },
    );
  }
}

