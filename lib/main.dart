import 'package:ecommerce_ui_app/screens/auth/forgot_password_page.dart';
import 'package:ecommerce_ui_app/screens/auth/register_page.dart';
import 'package:ecommerce_ui_app/screens/home/home_page.dart';
import 'package:ecommerce_ui_app/screens/home/trending_products.dart';
import 'package:ecommerce_ui_app/screens/onboarding/plash_screen_view.dart';
import 'package:ecommerce_ui_app/screens/onboarding/started_view.dart';
import 'package:ecommerce_ui_app/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

import 'screens/auth/login_page.dart';
import 'screens/onboarding/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> const IntroScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgotPassword': (context) => const ForgotPasswordPage(),
        '/started': (context) => const StartedView(),
        '/home': (context) => const HomePage(),
        '/plashScreen': (context) => const PlashScreenView(),
        '/profile':(context)  => const ProfilePage(),
        '/trending': (context) => const TrendingProducts(),
      },
    );
  }
}
