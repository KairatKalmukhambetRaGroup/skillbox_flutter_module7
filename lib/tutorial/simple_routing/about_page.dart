import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const routeName = '/about';
  const AboutPage({super.key, this.id});
  final id;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: widget.id != null
            ? Text('About Page ${widget.id}')
            : const Text('About Page'),
      ),
    );
  }
}
