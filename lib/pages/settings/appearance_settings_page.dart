// ignore_for_file: prefer_const_constructors

import 'package:dokuha/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppearanceSettings extends StatelessWidget {
  const AppearanceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appearance"),
      ),
      body: ListView(
        children: [
          ListTile(
            minLeadingWidth: 40,
            title: Text("Dark Theme"),
            trailing: Switch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(),
            ),
          ),
        ],
      ),
    );
  }
}
