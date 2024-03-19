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
          Container(
            color: Colors.teal[100],
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
