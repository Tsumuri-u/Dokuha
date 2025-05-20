import 'package:flutter/material.dart';

class BookshelvesPage extends StatefulWidget {
  const BookshelvesPage({super.key});

  @override
  State<BookshelvesPage> createState() => _BookshelvesPageState();
}

class _BookshelvesPageState extends State<BookshelvesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bookshelves")),
      body: Center(
        child: Text("not yet implemented"),
      ),
    );
  }
}
