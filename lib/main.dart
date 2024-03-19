// ignore_for_file: prefer_const_constructors
import 'package:dokuha/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dokuha());
}

class Dokuha extends StatelessWidget {
  const Dokuha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
