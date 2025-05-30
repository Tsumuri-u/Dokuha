import 'package:dokuha/data/notifiers.dart';
import 'package:dokuha/widgets/navbar_widget.dart';
import 'package:dokuha/pages/bookshelves/bookshelves_page.dart';
import 'package:dokuha/pages/explore/explore_page.dart';
import 'package:dokuha/pages/library/library_page.dart';
import 'package:dokuha/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  LibraryPage(),
  BookshelvesPage(),
  ExplorePage(),
  SettingsPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
