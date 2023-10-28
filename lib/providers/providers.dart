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

import 'package:provider/provider.dart';
import 'package:troona/providers/song_provider.dart';
import 'package:troona/providers/theme_provider.dart';

class Providers {
  /// Private constructor to prevent instantiation.
  Providers._();

  /// List of providers.
  static final providers = [
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
    ),
    ChangeNotifierProvider<SongProvider>(
      create: (_) => SongProvider(),
    ),
  ].toList();
}
