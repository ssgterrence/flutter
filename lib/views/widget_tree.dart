import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';
import 'package:flutter_app/widgets/navbar_widget.dart';

//define pages
List<Widget> pages = [
  //Homepage
  HomePage(),
  //Profile Page
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Flutter Mapp')),
        body: pages.elementAt(1), //display which page by index
        bottomNavigationBar: NavbarWidget(),
      ),
    );
  }
}
