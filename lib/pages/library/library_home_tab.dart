import 'package:dokuha/components/book_info.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class LibraryHome extends StatelessWidget {
  const LibraryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: true,
        childAspectRatio: 0.6,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          InkWell(
            child: Container(
              color: Colors.teal[100],
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return BookInfo();
                },
              );
            },
          ),
          Container(
            color: Colors.teal[200],
          ),
          Container(
            color: Colors.teal[300],
          ),
          Container(
            color: Colors.teal[400],
          ),
        ],
      ),
    );
  }
}
