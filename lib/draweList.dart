import 'package:flutter/material.dart';
import 'Feed_Back.dart';

class DrawList extends StatelessWidget {
  const DrawList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      color: const Color.fromRGBO(226, 222, 222, 1),
      child: Column(
        children: [
          ListView(
            children: [
              const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  'Help',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.feedback_sharp),
                  title: const Text(
                    'Feedback',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FeedBack(),
                      ),
                    );
                  }),
              const ListTile(
                leading: Icon(Icons.child_friendly_sharp),
                title: Text(
                  'invite friends',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'setting',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text(
                    'Rate',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
