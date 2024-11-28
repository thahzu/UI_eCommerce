
import 'package:flutter/material.dart';

import '../../common/components/custom_button.dart';
import '../../common/components/custom_square.dart';
import '../../common/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),

                  // Title
                  Text(
                    "Welcome \nback!",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                  ),
                  const SizedBox(height: 40),

                  // username
                  CustomTextfield(
                    icon: Icons.person,
                    hintText: "username",
                  ),
                  const SizedBox(height: 10),

                  // password
                  CustomTextfield(
                    icon: Icons.lock,
                    hintText: "password",
                    obscureText: true,
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 5),

                  // forgot password
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.pushNamed(context, '/forgotPassword')
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  // sign In
                  CustomButton(
                    color: Colors.pink,
                    onTap: () {
                      Navigator.pushNamed(context, '/started');
                    },
                    text: "Login",
                  ),
                  const SizedBox(height: 20),

                  // or continues with
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          "Or continues with",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Social Media Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //gg logo
                      CustomSquare(
                        imagePath: "assets/images/gglogo.png",
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                      // apple logo
                      CustomSquare(
                        imagePath: "assets/images/applelogo.png",
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                      // fb logo
                      CustomSquare(
                        imagePath: "assets/images/fb_logo.png",
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Create Account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Create An Account.",
                        style: TextStyle(color: Colors.grey, fontSize: 16,fontFamily: "Montserrat"),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Sign Up Action
                          Navigator.pushNamed(
                              context,
                              '/register'
                          );
                        },
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                            color: Colors.pink,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.pink,
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
