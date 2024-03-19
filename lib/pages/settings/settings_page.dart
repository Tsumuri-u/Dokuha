// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        children: [
          ListTile(
            minLeadingWidth: 40,
            leading: Icon(Icons.library_books_outlined),
            title: Text("Library"),
          ),
          ListTile(
            minLeadingWidth: 40,
            leading: Icon(Icons.palette_outlined),
            title: Text("Appearance"),
          ),
          ListTile(
            minLeadingWidth: 40,
            leading: Icon(Icons.book_online),
            title: Text("Reader"),
          ),
          ListTile(
            minLeadingWidth: 40,
            leading: Icon(Icons.folder_outlined),
            title: Text("Storage"),
          ),
          ListTile(
            minLeadingWidth: 40,
            leading: Icon(Icons.info_outline),
            title: Text("About"),
          ),
        ],
      ),
    );
  }
}