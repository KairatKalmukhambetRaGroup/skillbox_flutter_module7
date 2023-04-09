import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_views.dart';
import 'nav.dart';
import 'profile_views.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _routeIndex = 0;

  late List<GlobalKey<NavigatorState>> navigationKeys;

  List<GlobalKey<NavigatorState>> generateNavigationKeys() {
    List<GlobalKey<NavigatorState>> navKays = navs.map((navItem) {
      return GlobalKey<NavigatorState>();
    }).toList();
    return navKays;
  }

  @override
  void initState() {
    super.initState();
    navigationKeys = generateNavigationKeys();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _routeIndex,
        onTap: (int index) {
          if (_routeIndex == index) {
            if (navigationKeys[index].currentState!.canPop()) {
              navigationKeys[index].currentState?.pop();
            }
            _routeIndex = index;
          }
        },
        items: navs
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.title,
              ),
            )
            .toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          navigatorKey: navigationKeys[index],
          builder: (BuildContext context) {
            switch (index) {
              case 0:
                return HomeViews();
              case 1:
                return ProfileViews();
              default:
                return HomeViews();
            }
          },
        );
      },
    );
  }
}
