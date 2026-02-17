// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'คำนวนหาค่าดัชนีมวลกาย (BMI)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/bmi.png',
            width: 180,
            height: 180,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40), // ระยะซ้าย-ขวา
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'น้ำหนัก (kg.)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 6),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 15,
                    ),
                    hintText: 'กรอกน้ำหนักของคุณ',
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40), // ระยะซ้าย-ขวา
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ส่วนสูง (cm.)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 6),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 15,
                    ),
                    hintText: 'กรอกส่วนสูงของคุณ',
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'คำนวณค่า BMI',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        360,
                        60,
                      ),
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      backgroundColor: Colors.deepOrange),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ล้างข้อมูล',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        360,
                        60,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      backgroundColor: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                      height: 120,
                      width: 340,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BMI',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '0.00',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 216, 19, 5)),
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
