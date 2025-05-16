import 'package:flutter/material.dart';
import 'package:my_medic/login/welcome.dart';
import 'package:my_medic/components/bottom_nav_bar.dart';

class SplashServices {
  Future<void> isLogin(BuildContext context) async {
    try {
      await Future.delayed(
        Duration(milliseconds: 500),
      ); // Small delay for splash screen

      if (!context.mounted) return;

      // Replace this with your own authentication logic if needed
      bool isAuthenticated = false; // Example: default to not logged in

      if (isAuthenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      }
    } catch (e) {
      print("Error: $e");
      if (!context.mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }
  }
}
