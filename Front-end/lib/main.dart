// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guardi_app/screens/home_page.dart';
import 'package:guardi_app/screens/homePage.dart';

import 'screens/homePage.dart';

void main() {
  runApp(GuardiApp());
}

class GuardiApp extends StatelessWidget {
  const GuardiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
