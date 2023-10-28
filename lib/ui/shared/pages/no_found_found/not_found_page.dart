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

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NotFoundPage extends StatelessWidget {
  final String? name;

  const NotFoundPage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Route $name not found'),
      ),
    );
  }
}
