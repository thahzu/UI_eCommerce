import 'package:ecommerce_ui_app/common/components/custom_button.dart';
import 'package:ecommerce_ui_app/common/components/custom_textfield.dart';
import 'package:ecommerce_ui_app/common/components/textfield_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check out",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // avatar image
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.shade200,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Personal Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                TextfieldProfile(
                  hintText: "Your Email",
                ),

                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextfieldProfile(
                  hintText: "Password",
                  obscureText: true,
                ),

                // changes password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Changes Password",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),

                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Business Address Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Pin code",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Code",
                ),

                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Address",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Address",
                ),
                const SizedBox(height: 10),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "City",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your City",
                ),

                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Country",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Country",
                ),

                const SizedBox(height: 10),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),

                // Bank account details
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bank Account Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bank Account Number",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Number",
                ),

                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account Holder's Name",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Name",
                ),

                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "IFSC Code",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),

                const SizedBox(height: 5),
                const TextfieldProfile(
                  hintText: "Your Code",
                ),

                const SizedBox(height: 15),

                // Save Button
                CustomButton(
                  color: Colors.pink,
                  onTap: () {},
                  text: "Save",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
