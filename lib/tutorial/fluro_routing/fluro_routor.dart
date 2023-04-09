import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../simple_routing/home_page.dart';
import '../simple_routing/about_page.dart';
import '../simple_routing/blog_page.dart';
import '../simple_routing/page_not_found.dart';

class FluroRouterCustom {
  static FluroRouter router = FluroRouter();

  static Handler _homePageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return HomePage();
    },
  );

  static Handler _aboutPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      if (params.containsKey('uuid')) {
        return AboutPage(id: params['uuid'][0]);
      }
      return AboutPage();
    },
  );

  static Handler _blogPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return BlogPage();
    },
  );

  static Handler notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return PageNotFound(); // Replace with your own not found page widget
  });

  static void setupRouter() {
    router.define(HomePage.routeName, handler: _homePageHandler);
    router.define(AboutPage.routeName, handler: _aboutPageHandler);
    router.define('${AboutPage.routeName}/:uuid', handler: _aboutPageHandler);
    router.define(
      BlogPage.routeName,
      handler: _blogPageHandler,
      transitionType: TransitionType.cupertino,
    );
    router.notFoundHandler = notFoundHandler;
  }
}
