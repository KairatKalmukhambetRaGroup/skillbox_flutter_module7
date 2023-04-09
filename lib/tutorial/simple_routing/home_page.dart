import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Navigation',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/about');
              },
              child: const Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                // FOR DEFAULT ROUTER
                // Navigator.of(context).pushNamed(
                //   '/about',
                //   arguments: {'id': 123456789},
                // );

                // FOR FLURO
                Navigator.of(context).pushNamed(
                  '/about/123456789',
                );
              },
              child: const Text('About with arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/blog');
              },
              child: const Text('Blog'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/ppllppll');
              },
              child: const Text('Page Not Found'),
            ),
          ],
        ),
      ),
    );
  }
}
