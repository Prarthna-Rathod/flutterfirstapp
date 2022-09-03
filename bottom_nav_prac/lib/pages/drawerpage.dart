import 'package:bottom_nav_prac/pages/callpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drawerpage extends StatefulWidget {
  const Drawerpage({Key? key}) : super(key: key);

  @override
  State<Drawerpage> createState() => _DrawerpageState();
}

class _DrawerpageState extends State<Drawerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text("Hello Prarthna"),
          ),
          ListTile(
            title: Text('MenuItem1'),
            onTap: () {
              // Callpage();
            },
          ),
          ListTile(
            title: Text('MenuItem2'),
            onTap: () {
              // Callpage();
            },
          )
        ],
      ),
    );
  }
}
