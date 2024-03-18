// ignore_for_file: prefer_const_constructors

import 'package:dokuha/pages/home.dart';
import 'package:dokuha/pages/explore.dart';
import 'package:dokuha/pages/library.dart';
import 'package:dokuha/pages/settings.dart';
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
      theme: ThemeData(
      ),
      home: Home(),
      routes: {
        '/library' :(context) => Library(),
        '/explore' :(context) => Explore(),
        '/settings' :(context) => Settings(),
      }
    );
  }
}
