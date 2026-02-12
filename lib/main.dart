// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(
    FlutterSauHealthCalculator(),
  );
}

class FlutterSauHealthCalculator extends StatefulWidget {
  const FlutterSauHealthCalculator({super.key});

  @override
  State<FlutterSauHealthCalculator> createState() => _FlutterSauHealthCalculatorState();
}

class _FlutterSauHealthCalculatorState extends State<FlutterSauHealthCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

