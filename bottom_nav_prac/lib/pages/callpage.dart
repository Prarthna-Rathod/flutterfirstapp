import 'package:bottom_nav_prac/pages/drawerpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Callpage extends StatefulWidget {
  const Callpage({Key? key}) : super(key: key);

  @override
  State<Callpage> createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          margin: EdgeInsets.all(20),
          child:
              ElevatedButton(onPressed: () {}, child: Text("Button Clicked")),
        ),
      ),
    );
  }
}
