import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:troona/core/config/routes/not_found_screen.dart';
import 'package:troona/core/config/routes/route_path.dart';

import '../../../loading_screen.dart';

Route generateRoute(RouteSettings settings) {
  String? routeName = settings.name;
  Object? args = settings.arguments;

  switch (routeName) {
    case RoutePath.loading:
      return MaterialPageRoute(builder: (_) => const LoadingScreen());
    default:
      return CupertinoPageRoute(builder: (_) => NotFoundScreen(name: routeName));
  }
}
