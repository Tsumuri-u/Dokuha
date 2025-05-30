// ignore_for_file: prefer_const_constructors
import 'package:dokuha/pages/widget_tree.dart';
import 'package:dokuha/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const Dokuha(),
    ),
  );
}

class Dokuha extends StatelessWidget {
  const Dokuha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: WidgetTree(),
    );
  }
}
