// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dokuha/pages/library/bookshelves_tab.dart';
import 'package:dokuha/pages/library/library_home_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  int _libraryPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Library"),
      ),
      body: Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
              ],
            ),
          ),
          GNav(
            mainAxisAlignment: MainAxisAlignment.center,
            tabs: [
              GButton(
                onPressed: () {
                  setState(() {
                    _libraryPageIndex = 0;
                  });
                },
                icon: Icons.library_books_outlined,
                text: "Home",
              ),
              GButton(
                onPressed: () {
                  setState(() {
                    _libraryPageIndex = 1;
                  });
                },
                icon: Icons.bookmark_outline_rounded,
                text: "Bookshelves",
              ),
            ],
          ),
          Expanded(
            child: _libraryPageIndex == 0 ? LibraryHome() : BookshelvesTab(),
          ),
        ],
      ),
    );
  }
}
