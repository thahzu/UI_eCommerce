import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final Widget? suffixIcon;

  const CustomTextfield({
    super.key,
    required this.icon,
    required this.hintText,
     this.obscureText = false,
     this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                color:Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder:OutlineInputBorder(
              borderSide:BorderSide(color: Colors.grey.shade400,),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor:Colors.grey.shade200,
            filled: true,
            prefixIcon:Icon(icon,color: Colors.grey),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontFamily: "Montserrat",),
            border:InputBorder.none,
            suffixIcon:suffixIcon,
          ),
        ),
    );
  }
}
