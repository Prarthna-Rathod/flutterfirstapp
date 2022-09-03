import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Imagepage1 extends StatefulWidget {
  const Imagepage1({Key? key}) : super(key: key);

  @override
  State<Imagepage1> createState() => _Imagepage1State();
}

class _Imagepage1State extends State<Imagepage1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.call_end),
              ),
              Tab(
                icon: Icon(Icons.menu_book),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's home tab"),
            ),
            Center(
              child: Text("It's call tab"),
            ),
            Center(
              child: Text("It's menubook tab"),
            ),
          ],
        ),
      ),
    );
  }
}
