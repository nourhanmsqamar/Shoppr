import 'package:flutter/material.dart';
import 'dart:async';
import '../Login/LoginScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    ///==================== Navigation Timer ======================

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    });
    ///==========================================================
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffC4C4C4),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ///==================== Loading Text ======================
            Center(
              child: Text(
                "Loading • • •",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ///========================================================

            SizedBox(height: 60),
          ],
        ),

    );
  }
}