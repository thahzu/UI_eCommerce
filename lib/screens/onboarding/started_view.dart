import 'package:ecommerce_ui_app/common/widgets/components/custom_button.dart';
import 'package:flutter/material.dart';

class StartedView extends StatefulWidget {
  const StartedView({super.key});

  @override
  State<StartedView> createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              "assets/images/eminem.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // SafeArea for content
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Text Content
                    Text(
                      "You want\n Auththentic, here\n you go!",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Montserrat",

                      ),
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      "Find it here, buy it now!",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                      ),
                    ),

                    CustomButton(
                      text: "Get Started",
                      onTap: () => Navigator.pushNamed(
                          context,
                          '/home'
                      ), color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
