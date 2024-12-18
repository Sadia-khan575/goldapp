import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gold-app.dart'; // To navigate to the next screen after the splash

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => GoldHome()); // Replace 'GoldHome' with your main screen widget
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Yellow background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add the logo
            Image.asset(
              'assets/images/goldapp.jfif', // Path to your logo
              height: 200, // Adjust height
              width: 200, // Adjust width
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20), // Add spacing between logo and text
            // Add your name
            Text(
              'Sadia Khan', // Your name
              style: TextStyle(
                color: Colors.red, // Red text color
                fontSize: 36, // Adjust font size as per your preference
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
