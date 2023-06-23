import 'package:flutter/material.dart';
import 'package:g_freak_supplements/cart.dart';
import 'package:g_freak_supplements/checkout.dart';
import 'package:g_freak_supplements/completed.dart';
import 'package:g_freak_supplements/details.dart';
import 'package:g_freak_supplements/forgot.dart';
import 'package:g_freak_supplements/home.dart';
import 'package:g_freak_supplements/login.dart';
import 'package:g_freak_supplements/logo.dart';
import 'package:g_freak_supplements/myorder.dart';
import 'package:g_freak_supplements/profile.dart';
import 'package:g_freak_supplements/register.dart';
import 'package:g_freak_supplements/saved.dart';
import 'package:g_freak_supplements/setprofile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/logo',
        routes: {
          '/logo': (context) => const Logo(),
          '/login': (context) => const Login(),
          '/register': (context) => const Register(),
          '/forgot': (context) => const Forgot(),
          '/home': (context) => const Home(),
          '/details': (context) => const Details(),
          '/cart': (context) => const Cart(),
          '/checkout': (context) => const Checkout(),
          '/completed': (context) => const Completed(),
          '/saved': (context) => const Saved(),
          '/setprofile': (context) => const Setprofile(),
          '/profile': (context) => const Profile(),
          '/myorder': (context) => const Myorder(),
        }
    );
  }
}
