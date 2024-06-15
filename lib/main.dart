import 'package:choc_cafe/splashscreens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainCoffe());
}

class MainCoffe extends StatelessWidget {
  const MainCoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
