import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: const Text('Home'),
            selected: index == 0,
            selectedColor: Colors.blue,
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            title: const Text('Artist'),
            selected: index == 1,
            selectedColor: Colors.blue,
            onTap: () {
              Navigator.of(context).pushNamed('/artists');
            },
          ),
        ],
      ),
    );
  }
}
