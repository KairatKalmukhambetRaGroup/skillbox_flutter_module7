import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  HomeViews({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.green[300],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Home View'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const HomeViewDetails();
                }));
              },
              child: const Text('go to detail page'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeViewDetails extends StatefulWidget {
  const HomeViewDetails({super.key});

  @override
  State<HomeViewDetails> createState() => _HomeViewDetailsState();
}

class _HomeViewDetailsState extends State<HomeViewDetails> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.red[300],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Home View Details'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const HomeViewNested();
                }));
              },
              child: const Text('go to nested page'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeViewNested extends StatefulWidget {
  const HomeViewNested({super.key});

  @override
  State<HomeViewNested> createState() => _HomeViewNestedState();
}

class _HomeViewNestedState extends State<HomeViewNested> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.yellowAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Nested'),
          ],
        ),
      ),
    );
  }
}
