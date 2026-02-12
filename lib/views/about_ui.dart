import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 170,
              width: 170,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'คำนวณค่าดัชนีมวลกาย BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'คำนวณค่าแคลอรี่ที่ร่างกายต้องการ BMR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/4/47/Logosau-02.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Developed by BomBay SAU 2026'
            ),
          ],
        )),
      ),
    );
  }
}
