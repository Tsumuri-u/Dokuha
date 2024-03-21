// ignore_for_file: prefer_const_constructors

import 'package:dokuha/models/book_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StorageSettings extends StatelessWidget {
  const StorageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage"),
      ),
      body: ListView(
        children: [
          ListTile(
            minLeadingWidth: 40,
            title: Text("Book Folder"),
            trailing: ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.getDirectoryPath();
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
