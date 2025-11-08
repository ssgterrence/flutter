import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//stateless: the screen does not change
//state: the screen changes when change happens
//materal app
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Mapp')),
        body: const Center(child: Text('Hello, World!')),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) => print("select value is $value"),

          selectedIndex: 1,
        ),
      ),
    );
  }
}
