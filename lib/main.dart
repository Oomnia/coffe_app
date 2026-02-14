import 'package:coffe_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeApp());
}

class CoffeApp extends StatelessWidget {
  const CoffeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
