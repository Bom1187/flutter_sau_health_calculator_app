// ignore_for_file: sort_child_properties_last, prefer_is_empty

import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  // สร้างตัวคุม textfield
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  // สร้างตัวแปรสำหรับเก็บค่า BMI และะแปรผล
  double bmivalue = 0;
  String bmiresult = 'การแปรผล';

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
                  controller: weightController,
                  keyboardType: TextInputType.number,
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
                  controller: heightController,
                  keyboardType: TextInputType.number,
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
                  onPressed: () {
                    if (weightController.text.length == 0 ||
                        heightController.text.length == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกข้อมูลให้ครบ'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 3),
                        ),
                      );
                      return;
                    }

                    // คำนวณ BMI
                    double weight = double.parse(weightController.text);
                    double height = double.parse(heightController.text);
                    double bmi = weight / ((height / 100) * (height / 100));
                    setState(() {
                      bmivalue = bmi;
                    });

                    // แปรผล BMI
                    if (bmi < 18.5) {
                      bmiresult = 'น้ําหนักน้อย';
                    } else if (bmi >= 18.5 && bmi < 24.9) {
                      bmiresult = 'น้ําหนักปกติ';
                    } else if (bmi >= 25 && bmi < 29.9) {
                      bmiresult = 'อ้วน';
                    } else {
                      bmiresult = 'อ้วนมาก';
                    }
                  },
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
                  onPressed: () {
                    setState(() {
                      weightController.clear();
                      heightController.clear();
                      bmivalue = 0.0;
                      bmiresult = 'การแปรผล';
                    });
                  },
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
                              height: 5,
                            ),
                            Text(
                              'BMI',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              bmivalue.toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 216, 19, 5)),
                            ),
                            Text(
                              bmiresult,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
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
