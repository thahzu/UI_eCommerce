import 'dart:async';

import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<IntroScreen> {

  // time next page
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

Timer(const Duration(seconds: 3),(){
  Navigator.pushNamed(context, '/plashScreen');
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo_cty.png'),
      ),
    );
  }
}
