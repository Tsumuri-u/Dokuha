import 'package:dokuha/data/notifiers.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          selectedIndex: selectedPage,
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.menu_book_rounded),
              label: "Library",
            ),
            NavigationDestination(
              icon: Icon(Icons.book),
              label: "Bookshelves",
            ),
            NavigationDestination(
              icon: Icon(Icons.travel_explore_rounded),
              label: "Explore",
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        );
      },
    );
  }
}
