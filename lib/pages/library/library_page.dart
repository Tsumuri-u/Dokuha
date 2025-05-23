// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';
import 'package:dokuha/components/book_info.dart';
import 'package:epub_pro/epub_pro.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library"),
      ),
      body: GridView.count(
        primary: true,
        childAspectRatio: 0.6,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // let user change this
        crossAxisCount: 3,
        children: [
          InkWell(
            child: Ink.image(
              image: AssetImage('assets/images/kagerou.jpg'),
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
        ],
      ),
    );
  }
}
