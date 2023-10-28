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

import 'package:get_it/get_it.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:troona/providers/song_provider.dart';
import 'package:troona/providers/theme_provider.dart';

final sl = GetIt.instance; // sl = service locator

Future<void> setupLocator() async {
  // Providers:-----------------------------------------------------------------
  sl.registerSingleton<ThemeProvider>(ThemeProvider());
  sl.registerSingleton<SongProvider>(SongProvider());

  // Repositories:--------------------------------------------------------------

  // Services:------------------------------------------------------------------

  // External library:----------------------------------------------------------
  sl.registerLazySingleton<OnAudioQuery>(() => OnAudioQuery());
}
