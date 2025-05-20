// pop-up menu containing detailed book info
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

/*
buttons:
  BIG read button
  favorite button
  add to bookshelf button
  bookmarks menu
  delete button
  download button if from server

info (check book metadata if needed):
  title (default to filename)
  author
  genres
  synopsis
  page count
*/

import 'package:flutter/material.dart';

class BookInfo extends StatefulWidget {
  const BookInfo({super.key});

  @override
  State<BookInfo> createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // book cover,
            Column(
              children: [
                Text("Book Title"),
                Text("Book Authors"),
                Text("Book Genres"),
                Container(
                  width: 300,
                  height: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      // PLACEHOLDER
                      value: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
