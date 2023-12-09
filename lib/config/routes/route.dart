/*
=============
Author: Don Freddy
Github: https://github.com/donfreddy
Website: https://donfreddy.com
=============
Application: Troona Music
Homepage: https://github.com/donfreddy/troona
License: https://github.com/donfreddy/troona/blob/main/LICENSE
Copyright: © 2023, Don Freddy. All rights reserved.
=============
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:troona/config/routes/route_path.dart';
import 'package:troona/entry_point.dart';
import 'package:troona/ui/shared/pages/no_found_found/not_found_page.dart';

Route generateRoute(RouteSettings settings) {
  String? routeName = settings.name;
  //Object? args = settings.arguments;

  switch (routeName) {
    case RoutePath.loading:
      return MaterialPageRoute(builder: (_) => const EntryPoint());
    default:
      return CupertinoPageRoute(builder: (_) => NotFoundPage(name: routeName));
  }
}
