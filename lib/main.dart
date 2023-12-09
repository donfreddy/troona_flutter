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

import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:troona/constants/app_config.dart';
import 'package:troona/providers/providers.dart';
import 'package:troona/service_locator.dart';
import 'package:troona/troona_app.dart';

void main() async {
  // Init widgets
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  // Init Hive and boxes used in the app
  await Hive.initFlutter();
  for (final box in hiveBoxes) {
    await openHiveBox(
      box['name'].toString(),
      limit: box['limit'] as bool? ?? false,
    );
  }

  // Only portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  //fonts license
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['assets/google_fonts'], license);
  });

  // Init service locator
  await setupLocator();

  runApp(
    EasyLocalization(
      supportedLocales: TroonaLocales.all,
      path: 'assets/locales',
      fallbackLocale: TroonaLocales.all[0],
      useOnlyLangCode: true,
      child: MultiProvider(
        providers: Providers.providers,
        child: const TroonaApp(),
      ),
    ),
  );
}

Future<void> openHiveBox(String boxName, {bool limit = false}) async {
  final box = await Hive.openBox(boxName).onError(
    (error, stackTrace) async {
      final Directory dir = await getApplicationDocumentsDirectory();
      final String dirPath = dir.path;
      File dbFile = File('$dirPath/$boxName.hive');
      File lockFile = File('$dirPath/$boxName.lock');
      await dbFile.delete();
      await lockFile.delete();
      await Hive.openBox(boxName);
      throw 'Failed to open $boxName Box\nError: $error';
    },
  );

  // clear box if it grows large
  if (limit && box.length > 500) {
    box.clear();
  }
}
