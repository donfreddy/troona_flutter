import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:troona/app/app_config.dart';
import 'package:troona/app/troona_app.dart';

void main() async {
  // Init widgets
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  // Only portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  //fonts license
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['assets/google_fonts'], license);
  });

  runApp(
    EasyLocalization(
      supportedLocales: TroonaLocales.all,
      path: 'assets/locales',
      fallbackLocale: TroonaLocales.all[0],
      useOnlyLangCode: true,
      child: const TroonaApp(),
    ),
  );
}
