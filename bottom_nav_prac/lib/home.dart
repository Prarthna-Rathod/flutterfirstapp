import 'dart:html';

import 'package:bottom_nav_prac/pages/callpage.dart';
import 'package:bottom_nav_prac/pages/homepage1.dart';
import 'package:bottom_nav_prac/pages/imagepage.dart';
import 'package:bottom_nav_prac/pages/menupage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currIndex = 0;
  final screens = [
    const Homepage1(),
    const Callpage(),
    const Imagepage1(),
    const Menupage()

    // Center(
    //   child: Text(
    //     'Home',
    //     style: TextStyle(fontSize: 50),
    //   ),
    // ),
    // Center(child: Text('Call', style: TextStyle(fontSize: 50))),
    // Center(
    //   child: Text('Menu', style: TextStyle(fontSize: 50)),
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Navigation Bar"),
      // ),
      // drawer: Drawer(
      //   child: Text("Helo Flutter Drawer"),
      // ),
      body: (screens[currIndex]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          iconSize: 30,
          currentIndex: currIndex,
          onTap: (index) => setState(() => currIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Call",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.image),
                label: "Images",
                backgroundColor: Colors.brown),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
                backgroundColor: Colors.blue)
          ]),
    );
  }
}
