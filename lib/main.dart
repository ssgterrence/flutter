import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless: the screen does not change
//state: the screen changes when change happens
//materal app
//scaffold

//

//statefull: can refresh screen
//stateless: cannot refresh screen
//setState to refresh
String? title = "Flutter Mapp"; //null safety

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
      home: MyWidget(),
    );
  }
}

//Stateful widget
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Flutter Mapp')),
        body: currentIndex == 0
            ? Center(child: Text("Home Page"))
            : Center(child: Text("Profile Page")),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            setState(() {
              currentIndex = value;
            });
          },

          selectedIndex: currentIndex,
        ),
      ),
    );
  }
}
