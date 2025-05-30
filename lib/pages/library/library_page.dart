// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';
import 'package:dokuha/widgets/bookinfo_widget.dart';
import 'package:epub_pro/epub_pro.dart' as epub;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  Uint8List? _coverImage;

  @override
  void initState() {
    super.initState();
    loadEpubCover('assets/books/tth.epub');
  }

  loadEpubCover(String path) async {
    final bytes = await rootBundle.load(path);
    final epubBytes = bytes.buffer.asUint8List();

    final book = await epub.EpubReader.readBook(epubBytes);
    print(book.coverImage?.width);
  }

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
