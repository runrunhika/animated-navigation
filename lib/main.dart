import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'page/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPage(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildPage() {
    switch (index) {
      case 0: 
      default:
      return HomePage();
    }
  }

  Widget buildBottomNavigation() {
    return BottomNavyBar(
      backgroundColor: Colors.black,
      itemCornerRadius: 32,
      containerHeight: 80,
        selectedIndex: index,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text("Home"),
              textAlign: TextAlign.center,
              activeColor: Colors.pinkAccent,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text("Users"),
              textAlign: TextAlign.center,
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text("Messages"),
              textAlign: TextAlign.center,
              activeColor: Colors.green,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
              textAlign: TextAlign.center,
              activeColor: Colors.redAccent,
              inactiveColor: Colors.grey),
        ],
        onItemSelected: (index) {
          setState(() {
            this.index = index;
          });
        });
  }
}
