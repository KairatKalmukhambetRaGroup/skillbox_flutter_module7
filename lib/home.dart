import 'package:flutter/material.dart';
import 'package:module_7/my_drawer.dart';

class Home extends StatefulWidget {
  static const routeName = '/';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Routes'),
        ),
        drawer: const MyDrawer(index: 0),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Home Page'),
            ],
          ),
        ),
      ),
    );
  }
}
