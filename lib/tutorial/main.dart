import 'package:flutter/material.dart';
import 'cuppertino/main_page.dart';
import 'simple_routing/home_page.dart';
import 'simple_routing/about_page.dart';
import 'simple_routing/blog_page.dart';
import 'simple_routing/page_not_found.dart';
import 'package:fluro/fluro.dart';
import 'fluro_routing/fluro_routor.dart';

void main() {
  // FluroRouterCustom.setupRouter();
  runApp(const MyApp());
}

// ROUTING
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation',
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       // onUnknownRoute: (RouteSettings settings) {
//       //   return MaterialPageRoute(builder: (BuildContext context) {
//       //     return const PageNotFound();
//       //   });
//       // },
//       // FLURO ROUTER
//       onGenerateRoute: FluroRouterCustom.router.generator,

//       // GENERATE ROUTING
//       // onGenerateRoute: (RouteSettings settings) {
//       //   switch (settings.name) {
//       //     case HomePage.routeName:
//       //       return MaterialPageRoute(builder: (BuildContext context) {
//       //         return const HomePage();
//       //       });
//       //     case AboutPage.routeName:
//       //       final data = settings.arguments;
//       //       Map<String, dynamic> aboutArgs = {};
//       //       if (data != null) {
//       //         aboutArgs = data as Map<String, dynamic>;
//       //       }
//       //       if (aboutArgs != null && aboutArgs.containsKey('id')) {
//       //         return MaterialPageRoute(
//       //           fullscreenDialog: true,
//       //           builder: (BuildContext context) {
//       //             return AboutPage(id: aboutArgs['id']);
//       //           },
//       //         );
//       //       }
//       //       return MaterialPageRoute(builder: (BuildContext context) {
//       //         return const AboutPage();
//       //       });
//       //     case BlogPage.routeName:
//       //       return PageRouteBuilder(
//       //           pageBuilder: (context, animation1, secondaryAnimation) {
//       //         return const BlogPage();
//       //       }, transitionsBuilder:
//       //               (context, animation, secondaryAnimation, child) {
//       //         CurvedAnimation _curved = CurvedAnimation(
//       //           parent: animation,
//       //           curve: Curves.fastOutSlowIn,
//       //         );
//       //         Animation<double> _animate =
//       //             Tween<double>(begin: 0.0, end: 1.0).animate(_curved);
//       //         return ScaleTransition(
//       //           scale: _animate,
//       //           child: FadeTransition(opacity: animation, child: child),
//       //         );
//       //       });
//       //     default:
//       //       return MaterialPageRoute(builder: (BuildContext context) {
//       //         return const PageNotFound();
//       //       });
//       //   }
//       // },

//       // SIMPLE ROUTING
//       // routes: {
//       //   '/': (BuildContext context) => const HomePage(),
//       //   '/about': (BuildContext context) => const AboutPage(),
//       //   '/blog': (BuildContext context) => const BlogPage(),
//       // },
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       // home: const MyHomePage(title: 'Navigation'),
//     );
//   }
// }

// CUPPERTINO NAVIGATION
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
    );
  }
}
