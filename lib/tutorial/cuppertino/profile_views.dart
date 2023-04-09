import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileViews extends StatefulWidget {
  ProfileViews({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileViewsState();
}

class _ProfileViewsState extends State<ProfileViews> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.pink[300],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Profile View'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const ProfileViewDetails();
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

class ProfileViewDetails extends StatefulWidget {
  const ProfileViewDetails({super.key});

  @override
  State<ProfileViewDetails> createState() => _ProfileViewDetailsState();
}

class _ProfileViewDetailsState extends State<ProfileViewDetails> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue[300],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Profile View Details'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (BuildContext context) {
                  return const ProfileViewNested();
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

class ProfileViewNested extends StatefulWidget {
  const ProfileViewNested({super.key});

  @override
  State<ProfileViewNested> createState() => _ProfileViewNestedState();
}

class _ProfileViewNestedState extends State<ProfileViewNested> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.purpleAccent,
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
