import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      //widget
      valueListenable: selectedPageNotifier, //listener
      builder: (context, selectedPage, child) {
        // ui builder
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) => {
            selectedPageNotifier.value = value,
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
