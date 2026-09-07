import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.suffixIcon,
    this.controller,

  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
         SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            suffixIcon: suffixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffBFB8B8)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffBFB8B8)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
