import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:module_7/artists.dart';
import 'package:module_7/home.dart';
import 'package:module_7/not_found.dart';

class FluroRoutes {
  static FluroRouter router = FluroRouter();

  static Handler _homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return Home();
    },
  );

  static Handler _artistsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      if (params.containsKey('uuid')) {
        return Artists(id: params['uuid'][0]);
      }
      return Artists();
    },
  );

  static Handler notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return NotFound(); // Replace with your own not found page widget
  });

  static void setupRouter() {
    router.define(Home.routeName, handler: _homeHandler);
    router.define(Artists.routeName, handler: _artistsHandler);
    router.define('${Artists.routeName}/:uuid', handler: _artistsHandler);
    router.notFoundHandler = notFoundHandler;
  }
}
