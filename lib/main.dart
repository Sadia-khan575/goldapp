import'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:goldapp/even-or-odd.dart';
import 'package:goldapp/gold-app.dart';
import 'package:goldapp/sale-app.dart';

import 'result-calculator-app.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:
      //EvenOddChecker(),
      GoldHome(),
      //ResultCalculator
      //SaleApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

