import 'package:flutter/material.dart';
import 'package:vivian_routing_example/pages/unknown_page/unknown_page.dart';
import 'package:vivian_routing_example/pages/user_page/user_page.dart';

import 'main.dart';

Route<dynamic>? routes(RouteSettings routeSettings) {
  // Handle '/'
  if (routeSettings.name == null || routeSettings.name == '/') {
    return MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Default route',));
  }

  // Handle '/user_page/:id'
  var uri = Uri.parse(routeSettings.name!); // <---- null is handled on line 5
  if (uri.pathSegments.length == 2 && uri.pathSegments.first == 'user') {
    var id = uri.pathSegments[1];
    return MaterialPageRoute(builder: (context) => UserPage(id: id));
  }

  // Handle other routes i.e. 404
  return MaterialPageRoute(builder: (context) => const UnknownPage());
}
