import 'package:flutter/material.dart';
import 'DrawerHeader.dart';
import 'draweList.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("Ahmed"),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 192, 190, 190)),
            ),
            DrawList(),
          ],
        ),
      ),
    );
  }
}
