import 'package:flutter/material.dart';

import '../../../view/page/home_page.dart';



class Routes {
  static const String homePageRoute = '/';
}

class RouteGenrtor {
  Route<dynamic> getRout(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePageRoute:
        return MaterialPageRoute(builder: (_) => HomePge());
      default:
        return undifudRoute();
    }
  }

  static Route<dynamic> undifudRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(''),
              ),
              body: const Text(''),
            ));
  }
}
